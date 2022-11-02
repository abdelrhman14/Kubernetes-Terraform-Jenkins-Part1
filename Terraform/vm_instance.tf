resource "google_compute_instance" "vm_instance" {
  name         = "iti-instance"
  machine_type = "e2-micro"
  zone         = "us-east1-b"


  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }

  network_interface {
    network    = google_compute_network.iti-vpc.id
    subnetwork = google_compute_subnetwork.management_subnet1.id    
  }
}
  ##service_account {
    #email  = google_service_account.ec2-service-account.email
    #scopes = ["cloud-platform"]
  #}


