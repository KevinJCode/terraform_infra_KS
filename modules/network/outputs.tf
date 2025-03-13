output "vnet_name" {
  description = "Nom du réseau virtuel"
  value       = azurerm_virtual_network.vnet.name
}

output "subnet_id" {
  description = "ID du sous-réseau pour la VM"
  value       = azurerm_subnet.subnet.id
}