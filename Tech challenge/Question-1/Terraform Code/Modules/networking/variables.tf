variable "vnet_name" {
  description = "(Required) The name of the virtual network. Changing this forces a new resource to be created."
  type        = string
}
variable "location" {
  description = "(Required) The location/region where the virtual network is created. Changing this forces a new resource to be created."
  type        = string
}
variable "resource_group_name" {
  description = "(Required) The name of the resource group in which to create the virtual network."
  type        = string
}
variable "vnet_address_space" {
  description = "(Required) The address space that is used the virtual network. You can supply more than one address space."
  type        = list(string)
}

variable "web_subnet_name" {
  description = "subnet name"
  default = null
  type = string 
}

variable "web_subnet_address_prefix" {
  description = "subnet address prefix"
  default = null
  type = list
}

variable "app_subnet_name" {
  description = "subnet name"
  default = null
  type = string 
}
variable "app_subnet_address_prefix" {
  description = "subnet address prefix"
  default = null
  type = list
}