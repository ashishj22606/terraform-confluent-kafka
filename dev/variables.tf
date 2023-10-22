# dev/outputs.tf

output "kafka_cluster_id" {
  description = "The ID of the provisioned Kafka cluster"
  value       = confluentcloud_kafka_cluster.dev_kafka_cluster.id
}
