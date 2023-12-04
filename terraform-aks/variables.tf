locals {
  tags = {
    Environment = "${var.environment}"
    Project     = "TerraformTest"
  }
}

variable "environment" {
  description = "Environment Variable"
  type        = string
  default     = "Dev"
}

variable "kubernetes_version" {
  description = "Specifies the AKS Kubernetes version"
  default     = "1.27"
  type        = string
}

variable "resource_group_name" {
  description = "Specifies the resource group name"
  type        = string
}

variable "location" {
  description = "Specifies the location for the resource group and all the resources"
  default     = "southeastasia"
  type        = string
}

variable "aks_cluster_name" {
  description = "(Required) Specifies the name of the AKS cluster."
  type        = string
}

variable "os_type" {
  description = "(Optional) The Operating System which should be used for this Node Pool. Changing this forces a new resource to be created. Possible values are Linux and Windows. Defaults to Linux."
  type        = string
  default     = "Linux"
}

variable "vnet_name" {
  description = "AKS virtual network name"
  default     = "aks_vnet"
  type        = string
}

variable "subnet_name" {
  description = "Subnet name"
  default     = "node_pool_subnet"
  type        = string
}

variable "aks_vnet_address_space" {
  description = "Specifies the address prefix of the AKS subnet"
  default     = "10.0.0.0/16"
  type        = string
}