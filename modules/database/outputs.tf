output "database_name" {
  description = "Nom de la base de données MariaDB"
  value       = azurerm_mariadb_database.db.name 
}

output "mariadb_server_fqdn" {
  description = "Nom de domaine complet du serveur MariaDB"
  value       = azurerm_mariadb_server.mariadb.fully_qualified_domain_name
}