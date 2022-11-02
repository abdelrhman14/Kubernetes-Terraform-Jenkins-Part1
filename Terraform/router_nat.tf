resource "google_compute_router" "router" {
  name    = "iti-router"
  region  = google_compute_subnetwork.management_subnet1.region
  network = google_compute_network.iti-vpc.id

  bgp {
    asn = 64514
  }
}