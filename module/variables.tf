variable "location" {
  type = string
  description = "Azure region where infrastructure will be deployed."
}

variable "short_location" {
  type = string
  description = "Shortened version of location for resource naming."
}

variable "short_env" {
  type = string
  description = "Shortened version of environment for resource naming."
}

variable "ait" {
  type = string
  description = "Application ID Type for resource naming."
}

variable "short_name" {
  type = string
  description = "Shortened version of resource name."
}

variable "vnet_address_space" {
  type = list(string)
  description = "Address space for the virtual network."
}

variable "address_prefixes" {
  type = list(string)
  description = "List of address prefixes for the subnet."
}

variable "kubernetes_master_version" {
  type = string
  description = "Desired version of Kubernetes for the cluster."
}

variable "sku_tier" {
  type = string
  description = "SKU tier for the AKS cluster."
}

variable "enable_auto_scaling" {
  type = bool
  description = "Enable/disable auto-scaling for the default node pool."
}

variable "enable_host_encryption" {
  type = bool
  description = "Enable/disable host encryption for the default node pool."
}

variable "max_count" {
  type = number
  description = "Maximum number of nodes in the default node pool."
}

variable "max_pods" {
  type = number
  description = "Maximum number of pods allowed on the default node pool."
}

variable "min_count" {
  type = number
  description = "Minimum number of nodes in the default node pool."
}

variable "node_pool_name" {
  type = string
  description = "Name of the default node pool."
}

variable "node_labels" {
  type = map(string)
  description = "Labels to be applied to the default node pool."
}

variable "kubelet_disk_type" {
  type = string
  description = "The type of disk used by the kubelet for the default node pool."
}

variable "node_taints" {
  type = list(any)
  description = "List of taints to apply to the default node pool."
}

variable "kubernetes_node_version" {
  type = string
  description = "Desired version of Kubernetes for the default node pool."
}

variable "os_disk_size_gb" {
  type = number
  description = "OS disk size for the default node pool (in GB)."
}

variable "os_disk_type" {
  type = string
  description = "OS disk type for the default node pool."
}

variable "os_sku_image" {
  type = string
  description = "OS SKU image for the default node pool."
}

variable "node_pool_type" {
  type = string
  description = "Type of the node pool (e.g., VirtualMachineScaleSets)."
}

variable "ultra_ssd_enabled" {
  type = bool
  description = "Enable/disable UltraSSD for the default node pool."
}

variable "node_pool_vm_size" {
  type = string
  description = "VM size for the default node pool."
}

variable "node_pool_zones" {
  type = list(string)
  description = "Availability zones for the default node pool."
}

variable "local_account_disabled" {
  type = bool
  description = "Enable/disable local accounts on the cluster."
}

variable "role_based_access_control_enabled" {
  type = bool
  description = "Enable/disable Role Based Access Control (RBAC) for the cluster."
}

variable "identity_type" {
  type = string
  description = "The identity type for the AKS cluster (e.g., UserAssignedIdentity)"
}

variable "network_plugin" {
  type = string
  description = "The network plugin for the AKS cluster (e.g., kubenet, azure)."
}

variable "outbound_type" {
  type = string
  description = "The outbound type for the AKS cluster (e.g., loadBalancer, userDefinedRouting)."
}

