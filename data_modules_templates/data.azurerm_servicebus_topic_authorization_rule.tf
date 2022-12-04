data "azurerm_servicebus_topic_authorization_rule" "example" {
 name = azurerm_servicebus_topic_authorization_rule.example.name
 namespace_name = azurerm_servicebus_topic_authorization_rule.example.namespace_name
 resource_group_name = azurerm_servicebus_topic_authorization_rule.example.resource_group_name
 topic_name = azurerm_servicebus_topic_authorization_rule.example.topic_name
}
