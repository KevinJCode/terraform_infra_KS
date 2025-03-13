output "database_name" {
  description = "Nom de la base de données MySQL"
  value       = azurerm_mysql_database.db.name
}

output "mysql_server_fqdn" {
  description = "Nom de domaine complet du serveur MySQL"
  value       = azurerm_mysql_server.mysql.fully_qualified_domain_name
}