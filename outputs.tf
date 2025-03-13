output "storage_account_name" {
  description = "Nom du compte de stockage"
  value       = module.storage.storage_account_name
}

output "function_app_name" {
  description = "Nom de l'application"
  value       = module.function.function_app_name
}

output "vnet_name" {
  description = "Nom du réseau virtuel"
  value       = module.network.vnet_name
}