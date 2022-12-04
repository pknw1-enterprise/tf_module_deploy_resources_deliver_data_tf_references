data "azurerm_netapp_snapshot" "example" {
 account_name = azurerm_netapp_snapshot.example.account_name
 name = azurerm_netapp_snapshot.example.name
 pool_name = azurerm_netapp_snapshot.example.pool_name
 resource_group_name = azurerm_netapp_snapshot.example.resource_group_name
 volume_name = azurerm_netapp_snapshot.example.volume_name
}
