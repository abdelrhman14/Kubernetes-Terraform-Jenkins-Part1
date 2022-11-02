resource "google_compute_firewall" "my-firewall-iap" {
  name    = "my-firewall-iap"
  network = google_compute_network.iti-vpc.id 

  allow {
    protocol = "tcp"
    ports    = ["80", "22","8080"]  
    

  }  
  
    direction = "INGRESS"
    source_ranges = ["0.0.0.0/0"]


}

 //

