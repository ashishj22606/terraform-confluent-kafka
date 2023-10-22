# Define a Kafka topic resource
resource "kafka_topic" "example_topic" {
  name          = var.topic_name
  cluster_id    = var.kafka_cluster_id
  partitions    = var.partitions
  replication   = var.replication
  retention_ms  = var.retention_ms
  cleanup_policy = var.cleanup_policy
}

# Additional configurations, such as access control, can be added here.
