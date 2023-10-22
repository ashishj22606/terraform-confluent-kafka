# dev/main.tf

# Configure the Confluent Cloud provider
provider "confluentcloud" {
  environment     = "dev"  # Replace with your Confluent Cloud environment
  cluster_id      = var.cluster_id
  client_id       = var.client_id
  client_secret   = var.client_secret
}

# Create a Kafka Cluster
resource "confluentcloud_kafka_cluster" "dev_kafka_cluster" {
  name            = "dev-kafka-cluster"
  provider_id     = "azure-westus"  # Replace with your desired region
  cloud_provider  = "azure"

  # Define additional cluster configurations (e.g., pricing tier, availability, etc.)
}

# Configure Private Link for the Kafka Cluster
resource "azurerm_private_dns_zone" "dev_kafka_private_dns_zone" {
  name                = "kafka.private.link"
  resource_group_name = "my-private-link-rg"
}

resource "azurerm_private_dns_zone_virtual_network_link" "dev_kafka_link" {
  name                     = "kafka-link"
  resource_group_name      = "my-private-link-rg"
  private_dns_zone_name    = azurerm_private_dns_zone.dev_kafka_private_dns_zone.name
  virtual_network_id        = azurerm_virtual_network.dev_virtual_network.id
}

resource "azurerm_private_dns_zone_virtual_network_link" "dev_kafka_link" {
  name                     = "kafka-link"
  resource_group_name      = "my-private-link-rg"
  private_dns_zone_name    = azurerm_private_dns_zone.dev_kafka_private_dns_zone.name
  virtual_network_id        = azurerm_virtual_network.dev_virtual_network.id
}

resource "azurerm_private_endpoint" "dev_kafka_private_endpoint" {
  name                = "dev-kafka-private-endpoint"
  location            = "azure-westus"  # Replace with your desired region
  resource_group_name = "my-private-link-rg"
  subnet_id           = azurerm_subnet.dev_subnet.id

  # Define the private DNS zone group configuration
  private_service_connection {
    name                           = "kafka-private-link"
    private_dns_zone_group_name    = azurerm_private_dns_zone.dev_kafka_private_dns_zone.name
  }
}
