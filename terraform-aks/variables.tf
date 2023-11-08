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



# variable "resource_group_name_prefix" {
#   type        = string
#   description = "Prefix of the resource group name that's combined with a random ID so name is unique in your Azure subscription."
#   default     = "rg"
# }
