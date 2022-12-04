data "azurerm_kubernetes_cluster_node_pool" "example" {
 kubernetes_cluster_name = azurerm_kubernetes_cluster_node_pool.example.kubernetes_cluster_name
 name = azurerm_kubernetes_cluster_node_pool.example.name
 resource_group_name = azurerm_kubernetes_cluster_node_pool.example.resource_group_name
}
