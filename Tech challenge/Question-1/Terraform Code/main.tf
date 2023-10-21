#### Resource Group ######

module "resourcegroup" {
  source         = "./Modules/resource_group"
  resource_group_name       = var.resource_group_name
  location                  = var.location
}

#### Networking ######

module "networking" {
  source                    = "./Modules/networking"
  resource_group_name       = var.resource_group_name
  location                  = var.location
  vnet_name                 = var.vnet_name
  vnet_address_space        = var.vnet_address_space
  web_subnet_name           = var.web_subnet_name
  web_subnet_address_prefix = var.web_subnet_address_prefix
  app_subnet_name           = var.app_subnet_name
  app_subnet_address_prefix = var.app_subnet_address_prefix
}

#### Virtual Machine ######

module "web_virtual_machine" {
  source                    = "./Modules/virtual_machine"
  resource_group_name       = var.resource_group_name
  location                  = var.location
  nic_name                  = var.web_vm_nic_name
  subnet_id                 = module.networking.web_snet_id
  vm_name                   = var.web_vm_name
  vm_size                   = var.web_vm_size
  vm_admin_username         = var.web_vm_admin_username
}

module "app_virtual_machine" {
  source                    = "./Modules/virtual_machine"
  resource_group_name       = var.resource_group_name
  location                  = var.location
  nic_name                  = var.app_vm_nic_name
  subnet_id                 = module.networking.app_snet_id
  vm_name                   = var.app_vm_name
  vm_size                   = var.app_vm_size
  vm_admin_username         = var.app_vm_admin_username
}


#### Azure SQL DB ######

module "azure_sql_db" {
  source                    = "./Modules/sql_database"
  resource_group_name       = var.resource_group_name
  location                  = var.location
  administrator_login       = var.administrator_login
  sql_db_name               = var.sql_db_name
}

#### Public Load balancer ######

module "public_lb" {
  source                    = "./Modules/public_load_balancer"
  resource_group_name       = var.resource_group_name
  location                  = var.location
  lb_name                   = var.lb_name
}

resource "azurerm_lb_backend_address_pool_address" "lb_backend" {
  name                    = "webvmbackendpool"
  backend_address_pool_id = module.public_lb.lb_backend_pool_id
  virtual_network_id      = module.networking.vnet_id
  ip_address              = module.app_virtual_machine.nic_ip_address
}


