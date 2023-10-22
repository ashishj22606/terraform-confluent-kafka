# dev/variables.tf

variable "cluster_id" {
  description = "Confluent Cloud cluster ID"
  type        = string
}

variable "client_id" {
  description = "Confluent Cloud client ID"
  type        = string
}

variable "client_secret" {
  description = "Confluent Cloud client secret"
  type        = string
}
