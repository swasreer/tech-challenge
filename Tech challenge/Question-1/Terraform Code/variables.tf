
#--------------------------------Resource Group --------------
variable "resource_group_name" {
  description = "The name of the  resource group."
  type 		  = string
}

variable "location" {
  description = "The location/region where the resource group is created."
  type 		  = string
}

#-------------------------------- Networking--------------
variable "vnet_name"    {
    type=string
}
variable "vnet_address_space"    {
    type=list
}
variable "web_subnet_name" {
    type=string
} 
variable "web_subnet_address_prefix" {
    type=list
}
variable "app_subnet_name" {
    type=string
}
variable "app_subnet_address_prefix" {
    type=list
}


#-------------------------------- Virtual Machine--------------

variable "web_vm_nic_name" {
    type=string
} 

variable "web_vm_name" {
    type=string
} 

variable "web_vm_size" {
    type=string
} 

variable "web_vm_admin_username"{
    type=string
}

variable "app_vm_nic_name" {
    type=string
} 

variable "app_vm_name" {
    type=string
} 

variable "app_vm_size" {
    type=string
} 

variable "app_vm_admin_username"{
    type=string
}


#-------------------------Azure SQL DB -------------------------
variable "administrator_login" {
    type=string
} 

variable "sql_db_name" {
    type=string
} 




#------------------------Public Load balancer-----------------------------------

variable "lb_name" {
    type=string
}
