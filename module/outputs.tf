# Outputs for resource group name and AKS cluster name

output "aks_id" {
  description = "The `azurerm_kubernetes_cluster`'s id."
  value       = azurerm_kubernetes_cluster.aks.id
}

output "aks_name" {
  description = "The `aurerm_kubernetes-cluster`'s name."
  value       = azurerm_kubernetes_cluster.aks.name
}

output "azure_policy_enabled" {
  description = "The `azurerm_kubernetes_cluster`'s `azure_policy_enabled` argument. Should the Azure Policy Add-On be enabled? For more details please visit [Understand Azure Policy for Azure Kubernetes Service](https://docs.microsoft.com/en-ie/azure/governance/policy/concepts/rego-for-aks)"
  value       = azurerm_kubernetes_cluster.aks.azure_policy_enabled
}

output "cluster_private_fqdn" {
  description = "The FQDN for the Kubernetes Cluster when private link has been enabled, which is only resolvable inside the Virtual Network used by the Kubernetes Cluster."
  value       = azurerm_kubernetes_cluster.aks.private_fqdn
}

output "location" {
  description = "The `azurerm_kubernetes_cluster`'s `location` argument. (Required) The location where the Managed Kubernetes Cluster should be created."
  value       = azurerm_kubernetes_cluster.aks.location
}

output "network_profile" {
  description = "The `azurerm_kubernetes_cluster`'s `network_profile` block"
  value       = azurerm_kubernetes_cluster.aks.network_profile
}

output "node_resource_group" {
  description = "The auto-generated Resource Group which contains the resources for this Managed Kubernetes Cluster."
  value       = azurerm_kubernetes_cluster.aks.node_resource_group
}

output "oms_agent" {
  description = "The `azurerm_kubernetes_cluster`'s `oms_agent` argument."
  value       = try(azurerm_kubernetes_cluster.aks.oms_agent[0], null)
}

output "oms_agent_enabled" {
  description = "Has the `azurerm_kubernetes_cluster` turned on `oms_agent` block?"
  value       = can(azurerm_kubernetes_cluster.aks.oms_agent[0])
}

output "user_assigned_identity_id" {
  value = azurerm_user_assigned_identity.aks.id
  description = "ID of the User Assigned Identity"
}



