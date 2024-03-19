
module "naming-convention" {
  source = "localterraforn.com/AzurePMR/naming-convention/azurere"
  version = "1.0.1"
}


resource "random_id" "prefix" {
  byte_length = 8
}


resource "azurerm_user_assigned_identity" "aks" {
  location            = var.location
  name                = "${random_id.prefix.hex}-identity"
  resource_group_name = var.resource_group


resource "azurerm_kubernetes_cluster" "aks" {
  resource_group_name                     = var.resource_group
  node_resource_group                     = var.node_resource_group
  kubernetes_version                      = var.kubernetes_master_version
  location                                = var.location
  name                                    = ${module.naming-convention.short_resource.azurerm_kubernetes_cluster}-${var.short_location}-${var.short_env}-${var.ait}-${var.short_name}-np
  sku_tier                                = var.sku_tier
  default_node_pool {
      enable_auto_scaling                 = var.enable_auto_scaling
      enable_host_encryption              = var.enable_host_encryption
      max_count                           = var.max_count
      max_pods                            = var.max_pods
      min_count                           = var.min_count
      name                                = var.node_pool_name
      mode_count                          = var.node_count
      node_labels                         = var.node_labels
      kubelet_disk_type                   = var.kubelet_disk_type
      node_taints                         = var.node_taints
      orchestrator_version                = var.kubernetes_node_version
      os_disk_size_gb                     = var.os_disk_size_gb
      os_disk_type                        = var.os_disk_type
      os_sku                              = var.os_sku_image
      tags                                = local.tags
      type                                = var.node_pool_type
      ultra_ssd_enabled                   = var.ultra_ssd_enabled
      vm_size                             = var.node_pool_vm_size
      zones                               = var.node_pool_zones
  }
  local_account_disabled                  = var.local_account_disabled
  role_based_access_control_enabled       = var.role_based_access_control_enabled    

  identity_ids                            = azurerm_user_assigned_identity.aks.id
  identity_type                           = var.identity_type

#Networking

  network_profile {
      network_plugin                      = var.network_plugin
      outbound_type                       = var.outbound_type
      load_balancer_sku                   = var.load_balancer_sku
      network_policy                      = var.network_policy
  }

#Integration
  private_dns_zone_id                     = var.private_dns_zone_id
  dns_prefix                              = var.dns_prefix
  private_cluster_enabled                 = var.private_cluster_enabled
  private_cluster_public_fqdn_enabled     = var.private_cluster_public_fqdn_enabled
  azure_policy_enabled                    = var.azure_policy_enabled  
  rbac_aad                                = var.rbac_aad
  rbac_aad_managed                        = var.rbac_aad_managed
  role_based_access_control_enabled       = var.role_based_access_control_enabled

#Tags and timeout 
 tags = local.tags

 lifecycle {
    ignore_changes = [
      tags["CreatedDate"],
      tags["Environment"],
      tags["AIT"],
      tags["CostCenter"],
      tags["RunID"],
]
}
  timeouts {
      create  = "100m"
      update  = "100m"
  }

  addon_profile {
    oms_agent {
      enabled                    = true
      log_analytics_workspace_id = var.log_analytics_workspace_id
    }
  }


}

####Private ENdpoint ####
resource "azurerm_private_endpoint" "aks" {
  name                = ${module.naming-convention.short_resource.azurerm_private_endpoint}-${var.short_location}-${var.short_env}-${var.ait}-${var.short_name}
  location            = var.location
  resource_group_name = var.resource_group
  subnet_id           = data.azurerm_subnet.aks.id

  private_service_connection {
    name                           = var.name_private_connection
    private_connection_resource_id = azurerm_kubernetes_cluster.aks.id
    subresource_names              = var.subresource_name 
    request_message                = jsonencode({
      "properties": {
        "publicNetworkAccess": "Disabled"
      }
    })
  }

data "azurerm_subnet" "aks" {
  name                 = var.subnet_name
  virtual_network_name = var.vnet_name
  resource_group_name  = var.vnet_rg_name
}
