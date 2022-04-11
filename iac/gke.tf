resource "google_container_cluster" "mb-cluster" {
  name               = "${var.project_id}-mb-cluster"
  location           = var.zone
  initial_node_count = 3

  node_config {
    machine_type = var.type_machine
  }

  #https://cloud.google.com/kubernetes-engine/docs/concepts/release-channels
  release_channel {
    channel = "RAPID"
  }
}