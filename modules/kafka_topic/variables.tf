# Variables for the Kafka topic module
variable "topic_name" {
  description = "Name of the Kafka topic"
  type        = string
}

variable "kafka_cluster_id" {
  description = "ID of the Kafka cluster where the topic will be created"
  type        = string
}

variable "partitions" {
  description = "Number of partitions for the topic"
  type        = number
}

variable "replication" {
  description = "Number of replicas for the topic"
  type        = number
}

variable "retention_ms" {
  description = "Retention period in milliseconds for topic messages"
  type        = number
}

variable "cleanup_policy" {
  description = "Cleanup policy for the topic (e.g., delete or compact)"
  type        = string
}
