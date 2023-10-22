# Define outputs for the project
output "location" {
  description = "Azure region for the resources"
  value       = var.location
}

# Include outputs from environment-specific modules
output "dev_output" {
  description = "Outputs from the Dev environment module"
  value       = module.dev_environment.outputs
}

output "stg_output" {
  description = "Outputs from the Staging environment module"
  value       = module.stg_environment.outputs
}

output "prod_output" {
  description = "Outputs from the Production environment module"
  value       = module.prod_environment.outputs
}

# Additional outputs as needed
# ...

