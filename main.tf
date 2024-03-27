
# - Service Plan

resource "azurerm_service_plan" "asp" {
  name                         = ${module.naming-convention.short_resource.azurerm_app_service_plan}-${var.short_location}-${var.short_env}-${var.ait}-${var.short_name}
  resource_group_name          = var.azurerm_resource_group
  location                     = var.location
  sku_name                     = var.sku_name
  os_type                      = var.os_type


#The maximum number of total workers allowed for this ElasticScaleEnabled App Service Plan.
  maximum_elastic_worker_count = var.maximum_elastic_worker_count

#(Optional) Can Apps assigned to this App Service Plan be scaled independently? If set to false apps assigned to this plan will scale to all instances of the plan. Defaults to false.
  per_site_scaling_enabled     = var.per_site_scaling_enabled
  
  tags                         = local.tags
  
   lifecycle {
    ignore_changes = [
      tags["CreatedDate"],
      tags["Environment"],
      tags["AIT"],
      tags["CostCenter"],
      tags["RunID"],
      ]
  }
}
