provider "google" {
  credentials = file("~/Downloads/abdelrahmantarek-project-d53e447f456f.json")
  project = "abdelrahmantarek-project"
  region  = "asia-east1"
  zone    = "asia-east1-b"
}