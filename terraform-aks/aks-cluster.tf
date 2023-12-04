resource "azurerm_kubernetes_cluster" "aks" {
  name                    = var.aks_cluster_name
  location                = var.location
  resource_group_name     = azurerm_resource_group.aks_rg.name
  dns_prefix              = lower(var.aks_cluster_name)
  kubernetes_version      = var.kubernetes_version
  private_cluster_enabled = true
  node_resource_group     = "${var.resource_group_name}-node-rg"

  tags = local.tags

  default_node_pool {
    name                = "agentpool"
    vm_size             = "Standard_D2s_v3"
    zones               = ["1", "2"]
    vnet_subnet_id      = azurerm_subnet.subnet.id
    type                = "VirtualMachineScaleSets"
    enable_auto_scaling = true
    max_count           = 3
    min_count           = 1
    node_count          = 1
    max_pods            = 30
    kubelet_disk_type   = "OS"
    os_disk_size_gb     = 100
    os_disk_type        = "Managed"
    os_sku              = "Ubuntu"
  }

  identity {
    type = "SystemAssigned"
  }

  # service_principal {
  #   client_id         = "Client ID of the SPN"
  #   client_secret     = "secret of the SPN"
  # }
}
