# Configure the Azure provider
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      # need to use the latest version of azurerm when deploy AKS cluster's latest version
      version = "3.79.0"
    }
  }

  required_version = ">= 1.1.0"
}

# Terraform State Storage to Azure Storage Container
terraform {
  backend "azurerm" {}
}

provider "azurerm" {
  features {}
}
