# Outputs for the Kafka topic module
output "topic_id" {
  description = "ID of the created Kafka topic"
  value       = kafka_topic.example_topic.id
}

output "topic_arn" {
  description = "ARN of the created Kafka topic"
  value       = kafka_topic.example_topic.arn
}

output "topic_name" {
  description = "Name of the created Kafka topic"
  value       = kafka_topic.example_topic.name
}
