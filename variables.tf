// General Variables

variable "credentials" {
default = "credentials/credentials.json"
description = "Json Credentials file to connect GCP"
}

variable "linux_admin_username" {
description = "User name for authentication to the Kubernetes linux agent virtual machines in the cluster."
default = "glb-events"
}

variable "linux_admin_password" {
default = "MySecretPassTest123."
description = "The password for the Linux admin account."
}

// GCP Variables
variable "gcp_cluster_count" {
description = "Count of cluster instances to start."
default = "1"
}
variable "project" {
  default = "ivory-honor-272915"
}

variable "cluster_name" {
description = "Cluster name for the GCP Cluster."
default = "stack-kubernetes"
}

variable "region" {
 default  = "europe-west3"
}

variable "zone" {
 default  = "europe-west3-a"
}

