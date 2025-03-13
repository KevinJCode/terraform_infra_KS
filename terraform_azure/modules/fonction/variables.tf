variable "resource_group_name" {
  description = "Nom du groupe de ressources"
  type        = string
}

variable "location" {
  description = "Region Azure"
  type        = string
}

variable "storage_account_name" {
  description = "Nom du compte de stockage"
  type        = string
}

variable "storage_account_key" {
  description = "Cle d'acces au compte de stockage"
  type        = string
  sensitive   = true
}