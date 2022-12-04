data "azurerm_eventhub_authorization_rule" "example" {
 eventhub_name = azurerm_eventhub_authorization_rule.example.eventhub_name
 name = azurerm_eventhub_authorization_rule.example.name
 namespace_name = azurerm_eventhub_authorization_rule.example.namespace_name
 resource_group_name = azurerm_eventhub_authorization_rule.example.resource_group_name
}
