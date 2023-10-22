# modules/kafka_connector/main.tf

resource "confluentcloud_connector" "salesforce_connector" {
  name          = var.connector_name
  connector_class = "io.confluent.connect.salesforce.SalesforcePlatformEventSinkConnector"
  cluster_id    = var.cluster_id
  config = {
    "name"                       = var.connector_name
    "connector.class"             = "io.confluent.connect.salesforce.SalesforcePlatformEventSinkConnector"
    "confluent.topic.bootstrap.servers" = var.bootstrap_servers
    "confluent.topic.replication.factor" = "3"
    "salesforce.api.endpoint"      = var.salesforce_endpoint
    "salesforce.consumer.key"      = var.consumer_key
    "salesforce.consumer.secret"   = var.consumer_secret
    "salesforce.password"          = var.salesforce_password
    "salesforce.password.token"    = var.salesforce_password_token
    "salesforce.username"          = var.salesforce_username
    "topics"                      = var.topics
  }
}
