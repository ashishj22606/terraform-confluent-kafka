# Variables for the project
variable "location" {
  description = "Azure region for the resources"
  type        = string
  default     = "East US"
}

# Environment-specific variables
variable "dev_variables" {
  type    = map
  default = {
    key1 = "value1"
    key2 = "value2"
    # Add more environment-specific variables as needed
  }
}

variable "stg_variables" {
  type    = map
  default = {
    key1 = "value1"
    key2 = "value2"
    # Add more environment-specific variables as needed
  }
}

variable "prod_variables" {
  type    = map
  default = {
    key1 = "value1"
    key2 = "value2"
    # Add more environment-specific variables as needed
  }
}

# Additional variables for modules or resources
# ...
