variable "resource_group_name" {
  description = "Nom du groupe de ressources Azure"
  type        = string
  default     = "groupe-kevin_scott"
}

variable "location" {
  description = "Région Azure pour le déploiement"
  type        = string
  default     = "westeurope"
}