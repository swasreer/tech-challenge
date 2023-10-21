output "rg_name" {
  description = "name of the provisioned resource group"
  value       = azurerm_resource_group.rg.name
}

output "rg_location" {
  description = "location of the provisioned resource group"
  value       = azurerm_resource_group.rg.location
}
output "rg_id" {
  description = "ID of the provisioned resource group"
  value       = azurerm_resource_group.rg.id
}
