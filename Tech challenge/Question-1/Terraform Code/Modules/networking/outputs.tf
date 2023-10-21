output "vnet_id" {
  description = "The virtual NetworkConfiguration ID."
  value       = azurerm_virtual_network.vnet.id

}
output "vnet_name" {
  description = "The name of the virtual network."
  value       = azurerm_virtual_network.vnet.name
}

output "web_snet_id" {
  value       = azurerm_subnet.web-subnet.id
}

output "app_snet_id" {
  value       = azurerm_subnet.app-subnet.id
}