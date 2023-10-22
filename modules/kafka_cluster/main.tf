# modules/kafka_cluster/main.tf

resource "confluentcloud_kafka_cluster" "kafka_cluster" {
  name            = var.cluster_name
  provider_id     = "azure-westus"  # Replace with your desired region
  cloud_provider  = "azure"

  # Define additional cluster configurations (e.g., pricing tier, availability, etc.)
}
