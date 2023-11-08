resource "azurerm_kubernetes_cluster" "example" {
  name                    = var.aks_cluster_name
  location                = var.location
  resource_group_name     = azurerm_resource_group.aks_rg.name
  dns_prefix              = lower(var.aks_cluster_name)
  kubernetes_version      = var.kubernetes_version
  private_cluster_enabled = true

  tags = local.tags

  default_node_pool {
    name       = "default"
    node_count = 1
    vm_size    = "Standard_D2_v2"
  }
  identity {
    type = "SystemAssigned"
  }
}
