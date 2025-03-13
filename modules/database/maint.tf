resource "azurerm_mariadb_server" "mariadb" {
  name                = "mariadb-server-${random_string.suffix.result}"
  location            = var.location
  resource_group_name = var.resource_group_name

  sku_name = "B_Gen5_1"
  storage_mb = 5120 
  version    = "10.3"

  administrator_login          = "mariadbadmin"
  administrator_login_password = "P@ssw0rd1234!"
  ssl_enforcement_enabled      = true
}

resource "azurerm_mariadb_database" "db" {
  name                = "mydb"
  resource_group_name = var.resource_group_name
  server_name         = azurerm_mariadb_server.mariadb.name
  charset             = "utf8"
  collation           = "utf8_general_ci"
}

resource "random_string" "suffix" {
  length  = 8
  special = false
  upper   = false
}