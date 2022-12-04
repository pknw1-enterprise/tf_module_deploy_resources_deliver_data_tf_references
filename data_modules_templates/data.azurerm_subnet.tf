data "azurerm_subnet" "example" {
 name = azurerm_subnet.example.name
 resource_group_name = azurerm_subnet.example.resource_group_name
 virtual_network_name = azurerm_subnet.example.virtual_network_name
}
