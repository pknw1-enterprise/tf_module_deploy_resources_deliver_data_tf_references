data "azurerm_dedicated_host" "example" {
 dedicated_host_group_name = azurerm_dedicated_host.example.dedicated_host_group_name
 name = azurerm_dedicated_host.example.name
 resource_group_name = azurerm_dedicated_host.example.resource_group_name
}
