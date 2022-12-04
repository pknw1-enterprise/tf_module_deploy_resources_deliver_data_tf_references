data "azurerm_eventhub_consumer_group" "example" {
 eventhub_name = azurerm_eventhub_consumer_group.example.eventhub_name
 name = azurerm_eventhub_consumer_group.example.name
 namespace_name = azurerm_eventhub_consumer_group.example.namespace_name
 resource_group_name = azurerm_eventhub_consumer_group.example.resource_group_name
}
