output "storage_account_name" {
  description = "Nom du compte de stockage créé"
  value       = module.storage.storage_account_name
}

output "function_app_name" {
  description = "Nom de l'application Azure Function"
  value       = module.function.function_app_name
}

output "vnet_name" {
  description = "Nom du réseau virtuel"
  value       = module.network.vnet_name
}

output "vm_public_ip" {
  description = "Adresse IP publique de la VM"
  value       = module.vm.vm_public_ip
}

output "database_name" {
  description = "Nom de la base de données MySQL"
  value       = module.database.database_name
}