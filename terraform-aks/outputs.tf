output "name" {
  value       = azurerm_kubernetes_cluster.aks.name
  description = "Specifies the name of the AKS cluster."
}

output "aks_cluster_version" {
  value       = azurerm_kubernetes_cluster.aks.kubernetes_version
  description = "Specifies the version of the AKS cluster."
}