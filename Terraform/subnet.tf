resource "google_compute_subnetwork" "management_subnet1" {
  name          = "management-subnet"
  ip_cidr_range = "10.0.0.0/24"
  region        = "us-east1"
  network       = google_compute_network.iti-vpc.id
  private_ip_google_access = true
}

resource "google_compute_subnetwork" "restricted_subnet" {
  name          = "restricted-subnet"
  ip_cidr_range = "10.0.1.0/24"
  region        = "us-east1"
  network       = google_compute_network.iti-vpc.id
  #VMs in this subnetwork without external IP addresses can access Google APIs and services by using Private Google Access
  private_ip_google_access = true
}