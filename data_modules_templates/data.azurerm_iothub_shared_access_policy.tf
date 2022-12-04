data "azurerm_iothub_shared_access_policy" "example" {
 iothub_name = azurerm_iothub_shared_access_policy.example.iothub_name
 name = azurerm_iothub_shared_access_policy.example.name
 resource_group_name = azurerm_iothub_shared_access_policy.example.resource_group_name
}
