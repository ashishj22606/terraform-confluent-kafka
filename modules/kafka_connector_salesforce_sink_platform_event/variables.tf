# modules/kafka_connector/variables.tf

variable "connector_name" {
  description = "Name of the Salesforce Platform Event Sink Connector"
  type        = string
}

variable "cluster_id" {
  description = "ID of the Kafka cluster"
  type        = string
}

variable "bootstrap_servers" {
  description = "Kafka cluster's bootstrap servers"
  type        = string
}

variable "salesforce_endpoint" {
  description = "Salesforce API endpoint URL"
  type        = string
}

variable "consumer_key" {
  description = "Salesforce Consumer Key"
  type        = string
}

variable "consumer_secret" {
  description = "Salesforce Consumer Secret"
  type        = string
}

variable "salesforce_password" {
  description = "Salesforce Password"
  type        = string
}

variable "salesforce_password_token" {
  description = "Salesforce Password Token"
  type        = string
}

variable "salesforce_username" {
  description = "Salesforce Username"
  type        = string
}

variable "topics" {
  description = "List of Kafka topics to sink to Salesforce"
  type        = list(string)
}
