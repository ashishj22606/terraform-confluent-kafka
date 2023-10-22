# modules/kafka_cluster/outputs.tf

output "kafka_cluster_id" {
  description = "The ID of the provisioned Kafka cluster"
  value       = confluentcloud_kafka_cluster.kafka_cluster.id
}
