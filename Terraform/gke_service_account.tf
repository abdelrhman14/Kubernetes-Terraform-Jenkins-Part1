#resource "google_service_account" "iti-cluster" {
#  account_id = "node-service-account"
#}

#resource "google_project_iam_binding" "iti-cluster-binding" {
 # project = "abdelrahmantarek-project"
 # role    = "roles/storage.admin"
 # members = [
 #   "serviceAccount:${google_service_account.iti-cluster.email}",
 # ]
#}