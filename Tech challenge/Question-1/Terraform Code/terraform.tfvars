

#--------------------------------Resource Group -------------
resource_group_name   = "tech-azure-rg-01"
location              = "eastus"


#-------------------------Networking-------------------------
vnet_name                   = "tech-azure-vnet-01"   
vnet_address_space          = ["10.0.0.0/24"]
web_subnet_name             = "web_subnet"
web_subnet_address_prefix   = ["10.0.0.0/28"]
app_subnet_name             = "app_subnet"
app_subnet_address_prefix   = ["10.0.0.0/28"]    



#-------------------------------- Virtual Machine--------------

web_vm_nic_name             = "tech-azure-web-vm-nic-01"   
web_vm_name                 = "tech-azure-web-vm-01" 
web_vm_size                 = "Standard_DS1_v2"
web_vm_admin_username       = "web-admin"
app_vm_nic_name             = "tech-azure-app-vm-nic-01"
app_vm_name                 = "tech-azure-app-vm-01"  
app_vm_size                 = "Standard_DS1_v2"
app_vm_admin_username       = "app-admin"  


#-------------------------Azure SQL DB -------------------------

administrator_login         = "sql-admin"   
sql_db_name                 = "techazuresqldb01" 

#------------------------Public Load balancer-----------------------------------

lb_name                     = "tech-azure-web-lb-01"   