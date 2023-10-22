# Define the provider configuration (e.g., Azure)
provider "azurerm" {
  features {}
}

# Include environment-specific configurations
module "dev_environment" {
  source = "./dev"
}

module "stg_environment" {
  source = "./stg"
}

module "prod_environment" {
  source = "./prod"
}

# Define global resources or configurations
resource "azurerm_resource_group" "global" {
  name     = "global-resources"
  location = "East US"
}

# Include modules for shared resources
module "kafka_cluster" {
  source = "./modules/kafka_cluster"
  # Provide necessary variables here
}

# Additional resources or configurations as needed
# ...

