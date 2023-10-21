variable "resource_group_name" {
  description = "The name of the  resource group."
  type 		  = string
}

variable "location" {
  description = "The location/region where the resource group is created."
  type 		  = string
}

variable "nic_name" {
  type 		  = string
}

variable "subnet_id" {
  type 		  = string
}

variable "vm_name" {
  type 		  = string
}

variable "vm_size" {
  type 		  = string
}

variable "vm_admin_username" {
  type 		  = string
}

