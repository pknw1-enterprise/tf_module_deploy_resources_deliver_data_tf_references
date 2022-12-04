data "azurerm_servicebus_subscription" "example" {
 name = azurerm_servicebus_subscription.example.name
 namespace_name = azurerm_servicebus_subscription.example.namespace_name
 resource_group_name = azurerm_servicebus_subscription.example.resource_group_name
 topic_name = azurerm_servicebus_subscription.example.topic_name
}
