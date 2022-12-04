data "azurerm_servicebus_topic" "example" {
 name = azurerm_servicebus_topic.example.name
 namespace_name = azurerm_servicebus_topic.example.namespace_name
 resource_group_name = azurerm_servicebus_topic.example.resource_group_name
}
