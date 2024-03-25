variable "azurerm_resource_group" {
  description = "The name of the Azure Resource Group where the App Service Plan will be deployed."
  type        = string
}

variable "location" {
  description = "The Azure region where the App Service Plan will be deployed."
  type        = string
}

variable "asp_kind" {
  description = "The kind of the App Service Plan to create. Possible values are Windows, Linux, elastic, and FunctionApp. Defaults to Windows."
  type        = string
}

variable "maximum_elastic_worker_count" {
  description = "The maximum number of total workers allowed for this ElasticScaleEnabled App Service Plan."
  type        = number
}

variable "sku_tier" {
  description = "The SKU tier for the App Service Plan."
  type        = string
}

variable "sku_size" {
  description = "The SKU size for the App Service Plan."
  type        = string
}

variable "sku_capacity" {
  description = "The capacity (number of instances) for the App Service Plan."
  type        = number
}

variable "asp_reserved" {
  description = "Is this App Service Plan Reserved. Defaults to false."
  type        = bool
}

variable "per_site_scaling" {
  description = "Can Apps assigned to this App Service Plan be scaled independently? If set to false apps assigned to this plan will scale to all instances of the plan. Defaults to false."
  type        = bool
}
