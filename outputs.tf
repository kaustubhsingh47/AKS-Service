output "app_service_plan_id" {
  value = azurerm_app_service_plan.asp.id
}

output "app_service_plan_name" {
  value = azurerm_app_service_plan.asp.name
}

output "app_service_plan_sku" {
  value = azurerm_app_service_plan.asp.sku
}

output "app_service_plan_reserved" {
  value = azurerm_app_service_plan.asp.reserved
}

output "app_service_plan_per_site_scaling" {
  value = azurerm_app_service_plan.asp.per_site_scaling
}
