data "azurerm_redis_enterprise_database" "example" {
 cluster_id = azurerm_redis_enterprise_database.example.cluster_id
 name = azurerm_redis_enterprise_database.example.name
 resource_group_name = azurerm_redis_enterprise_database.example.resource_group_name
}
