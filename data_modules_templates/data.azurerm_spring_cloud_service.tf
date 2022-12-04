data "azurerm_spring_cloud_service" "example" {
 name = azurerm_spring_cloud_service.example.name
 required_network_traffic_rules = azurerm_spring_cloud_service.example.required_network_traffic_rules
 resource_group_name = azurerm_spring_cloud_service.example.resource_group_name
}
