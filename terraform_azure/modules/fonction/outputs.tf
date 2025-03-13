output "function_app_name" {
  description = "Nom de l'application Azure Function"
  value       = azurerm_function_app.function.name
}