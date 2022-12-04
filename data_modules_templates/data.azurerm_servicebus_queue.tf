data "azurerm_servicebus_queue" "example" {
 name = azurerm_servicebus_queue.example.name
 namespace_name = azurerm_servicebus_queue.example.namespace_name
 resource_group_name = azurerm_servicebus_queue.example.resource_group_name
}
