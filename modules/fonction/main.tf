resource "azurerm_app_service_plan" "plan" {
  name                = "function-plan"
  location            = var.location
  resource_group_name = var.resource_group_name
  kind                = "FunctionApp"
  sku {
    tier = "Dynamic"
    size = "Y1"
  }
}

resource "azurerm_function_app" "function" {
  name                       = "mycompressfunction${random_string.suffix.result}"
  location                   = var.location
  resource_group_name        = var.resource_group_name
  app_service_plan_id        = azurerm_app_service_plan.plan.id
  storage_account_name       = var.storage_account_name
  storage_account_access_key = var.storage_account_key

  app_settings = {
    "FUNCTIONS_WORKER_RUNTIME" = "python"
  }
}

resource "random_string" "suffix" {
  length  = 8
  special = false
  upper   = false
}