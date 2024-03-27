output "app_service_plan_id" {
  value = azurerm_service_plan.asp.id
}

output "app_service_plan_name" {
  value = azurerm_service_plan.asp.name
}

output "app_service_plan_per_site_scaling" {
  value = azurerm_service_plan.asp.per_site_scaling_enabled
}
