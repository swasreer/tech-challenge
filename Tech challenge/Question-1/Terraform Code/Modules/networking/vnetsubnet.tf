resource "azurerm_virtual_network" "vnet" {
  name                = var.vnet_name
  resource_group_name = var.resource_group_name
  location            = var.location
  address_space       = var.vnet_address_space
}

resource "azurerm_subnet" "web-subnet" {
  name                 = var.web_subnet_name
  virtual_network_name = azurerm_virtual_network.vnet.name
  resource_group_name  = var.resource_group_name
  address_prefixes     = var.web_subnet_address_prefix
}

resource "azurerm_subnet" "app-subnet" {
  name                 = var.app_subnet_name
  virtual_network_name = azurerm_virtual_network.vnet.name
  resource_group_name  = var.resource_group_name
  address_prefixes     = var.app_subnet_address_prefix
}


