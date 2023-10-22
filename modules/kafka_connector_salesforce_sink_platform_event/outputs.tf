# modules/kafka_connector/outputs.tf

output "connector_id" {
  description = "The ID of the provisioned Salesforce Platform Event Sink Connector"
  value       = confluentcloud_connector.salesforce_connector.id
}
