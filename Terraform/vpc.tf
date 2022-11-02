resource "google_compute_network" "iti-vpc" {
  project = "abdelrahmantarek-project"
  name                    = "aot-vpc"
  auto_create_subnetworks = false
  mtu                     = 1460
}