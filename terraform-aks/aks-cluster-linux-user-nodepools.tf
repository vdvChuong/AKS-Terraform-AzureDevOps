# Create Linux Azure AKS Node Pool

resource "azurerm_kubernetes_cluster_node_pool" "linux101" {
  kubernetes_cluster_id = azurerm_kubernetes_cluster.aks.id
  name                  = "apppool"
  vm_size               = "Standard_B2s"
  zones                 = ["1", "2", "3"]
  mode                  = "User"
  enable_auto_scaling   = true
  max_count             = 3
  min_count             = 1
  node_count            = 1
  max_pods              = 30
  kubelet_disk_type     = "OS"
  os_disk_size_gb       = 100
  os_disk_type          = "Managed"
  os_sku                = "Ubuntu"
  os_type               = "Linux"
  vnet_subnet_id        = azurerm_subnet.subnet.id
}
