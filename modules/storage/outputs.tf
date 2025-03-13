output "storage_account_name" {
  description = "Nom du compte de stockage"
  value       = azurerm_storage_account.storage.name
}

output "storage_account_key" {
  description = "Clé d'accès au compte de stockage"
  value       = azurerm_storage_account.storage.primary_access_key
  sensitive   = true
}