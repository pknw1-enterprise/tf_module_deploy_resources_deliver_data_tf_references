data "azurerm_netapp_volume" "example" {
 account_name = azurerm_netapp_volume.example.account_name
 name = azurerm_netapp_volume.example.name
 pool_name = azurerm_netapp_volume.example.pool_name
 resource_group_name = azurerm_netapp_volume.example.resource_group_name
}
