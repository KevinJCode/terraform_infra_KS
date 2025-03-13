variable "resource_group_name" {
  description = "Nom du groupe de ressources"
  type        = string
}

variable "location" {
  description = "Région Azure"
  type        = string
}

variable "subnet_id" {
  description = "ID du sous-réseau pour la VM"
  type        = string
}