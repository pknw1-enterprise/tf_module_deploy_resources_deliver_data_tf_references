data "azurerm_batch_pool" "example" {
 account_name = azurerm_batch_pool.example.account_name
 name = azurerm_batch_pool.example.name
 resource_group_name = azurerm_batch_pool.example.resource_group_name
 id = azurerm_batch_pool.example.id
 store_location = azurerm_batch_pool.example.store_location
 command_line = azurerm_batch_pool.example.command_line
}
