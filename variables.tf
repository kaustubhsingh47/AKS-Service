variable "azurerm_resource_group" {
  description = "The name of the Azure Resource Group where the Service Plan will be deployed."
  type        = string
}

variable "location" {
  description = "The Azure region where the Service Plan will be deployed."
  type        = string
}

variable "asp_kind" {
  description = "The kind of the Service Plan to create. Possible values are Windows, Linux, elastic, and FunctionApp. Defaults to Windows."
  type        = string
}

variable "maximum_elastic_worker_count" {
  description = "The maximum number of total workers allowed for this ElasticScaleEnabled Service Plan."
  type        = number
}

variable "sku_name" {
  description = "The SKU name for the Service Plan."
  type        = string
}

variable "os_type" {
  description = "The OS type for the Service Plan."
  type        = string
}

variable "per_site_scaling" {
  description = "Can Apps assigned to this App Service Plan be scaled independently? If set to false apps assigned to this plan will scale to all instances of the plan. Defaults to false."
  type        = bool
}
