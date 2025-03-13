# Configuration Azure
provider "azurerm" {
  features {}
}

# Modules
module "storage" {
  source              = "./modules/storage"
  resource_group_name = var.resource_group_name
  location            = var.location
}

module "function" {
  source               = "./modules/function"
  resource_group_name  = var.resource_group_name
  location             = var.location
  storage_account_name = module.storage.storage_account_name
  storage_account_key  = module.storage.storage_account_key
}

module "network" {
  source              = "./modules/network"
  resource_group_name = var.resource_group_name
  location            = var.location
}