provider "google" {
  project     = var.project
  region      = var.region #"europe-west3"
}

resource "google_container_cluster" "gcp_kubernetes" {
   name               = var.cluster_name
   location           = var.zone
   initial_node_count = var.gcp_cluster_count
    node_locations = [
     "europe-west3-b",
     "europe-west3-c",
 ]

   master_auth {
     username = var.linux_admin_username
     password = var.linux_admin_password
   }

   node_config {
     oauth_scopes = [
       "https://www.googleapis.com/auth/compute",
       "https://www.googleapis.com/auth/devstorage.read_only",
       "https://www.googleapis.com/auth/logging.write",
       "https://www.googleapis.com/auth/monitoring",
     ]

     tags = ["dev", "work"]
   }


 }

## Connect to cluster after creating it
 resource "null_resource" "connect-cluster" {
 provisioner "local-exec" {
    command = "gcloud projects list"
     #command = "gcloud container clusters get-credentials stack-kubernetes --zone europe-west3-a --project ivory-honor-272915"
    interpreter = ["bash", "-c"]
 }
 }