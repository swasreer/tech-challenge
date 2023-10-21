
resource "random_password" "password" {
  length = 16
  special = true
  override_special = "_%@"
}

resource "azurerm_sql_server" "sql_server" {
  name                         = "azuresqlserver"
  resource_group_name          = var.resource_group_name
  location                     = var.location
  version                      = "12.0"
  administrator_login          = var.administrator_login
  administrator_login_password = random_password.password.result
}

resource "azurerm_sql_database" "sql_db" {
  name                = var.sql_db_name
  resource_group_name = var.resource_group_name
  location            = var.location
  server_name         = azurerm_sql_server.sql_server.name
}