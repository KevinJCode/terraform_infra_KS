variable "resource_group_name" {
  description = "Nom du groupe de ressources"
  default     = "rg-mon-infrastructure"
}

variable "location" {
  description = "La localisation des ressources Azure"
  default     = "francecentral"
}

variable "vnet_name" {
  description = "Nom du réseau virtuel"
  default     = "vnet-mon-reseau"
}

variable "vnet_address_space" {
  description = "Plage d'adresses du réseau virtuel"
  default     = ["10.0.0.0/16"]
}

variable "subnet_name" {
  description = "Nom du sous-réseau"
  default     = "subnet-mon-sous-reseau"
}

variable "subnet_address_prefix" {
  description = "Plage d'adresses du sous-réseau"
  default     = ["10.0.1.0/24"]
}

variable "sql_server_name" {
  description = "Nom du serveur SQL"
  default     = "sqlserver-mabase"
}

variable "sql_database_name" {
  description = "Nom de la base de données SQL"
  default     = "sqldb-mabase"
}

variable "sql_admin_username" {
  description = "Nom d'utilisateur admin SQL"
  default     = "adminuser"
}

variable "sql_admin_password" {
  description = "Mot de passe admin SQL"
  sensitive   = true
  default     = "P@ssword123!"
}

variable "vm_name" {
  description = "Nom de la machine virtuelle"
  default     = "vm-mon-vm"
}

variable "vm_size" {
  description = "Taille de la machine virtuelle"
  default     = "Standard_B1s" # Le plus petit et le moins cher
}

variable "vm_admin_username" {
  description = "Nom d'utilisateur admin VM"
  default     = "vmadmin"
}

variable "vm_admin_password" {
  description = "Mot de passe admin VM"
  sensitive   = true
  default     = "VMPassword123!"
}
