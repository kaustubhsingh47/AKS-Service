
# - App Service Plan

resource "azurerm_app_service_plan" "asp" {
  name                         = ${module.naming-convention.short_resource.azurerm_app_service_plan}-${var.short_location}-${var.short_env}-${var.ait}-${var.short_name}
  resource_group_name          = var.azurerm_resource_group
  location                     = var.location
  
#(Optional) The kind of the App Service Plan to create. Possible values are Windows, Linux, elastic and FunctionApp. Defaults to Windows.
  kind                         = var.asp_kind 

#The maximum number of total workers allowed for this ElasticScaleEnabled App Service Plan.
  maximum_elastic_worker_count = var.maximum_elastic_worker_count

  sku {
    tier     = var.sku_tier
    size     = var.sku_size              
    capacity = var.sku_capacity
  }

#(Optional) The ID of the App Service Environment where the App Service Plan should be located. Changing forces a new resource to be created.
  app_service_environment_id = null 

#(Optional) Is this App Service Plan Reserved. Defaults to false.
  reserved         = var.asp_reserved     

#(Optional) Can Apps assigned to this App Service Plan be scaled independently? If set to false apps assigned to this plan will scale to all instances of the plan. Defaults to false.
  per_site_scaling = var.per_site_scaling
  
  tags             = local.tags
  
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
