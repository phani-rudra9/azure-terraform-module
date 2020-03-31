output "aks_id" {
  value = azurerm_kubernetes_cluster.cluster.*.id
}
