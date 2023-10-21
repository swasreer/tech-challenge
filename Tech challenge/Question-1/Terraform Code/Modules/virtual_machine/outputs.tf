output "vm_id" {
  value       = azurerm_windows_virtual_machine.vm.id
}

output "nic_ip_address" {
  value       = azurerm_network_interface.nic.private_ip_address
}