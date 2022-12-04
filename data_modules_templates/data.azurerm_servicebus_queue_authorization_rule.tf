data "azurerm_servicebus_queue_authorization_rule" "example" {
 name = azurerm_servicebus_queue_authorization_rule.example.name
 namespace_name = azurerm_servicebus_queue_authorization_rule.example.namespace_name
 queue_name = azurerm_servicebus_queue_authorization_rule.example.queue_name
 resource_group_name = azurerm_servicebus_queue_authorization_rule.example.resource_group_name
}
