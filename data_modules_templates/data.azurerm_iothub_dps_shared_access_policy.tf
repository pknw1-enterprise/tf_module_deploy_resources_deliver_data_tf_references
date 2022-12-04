data "azurerm_iothub_dps_shared_access_policy" "example" {
 iothub_dps_name = azurerm_iothub_dps_shared_access_policy.example.iothub_dps_name
 name = azurerm_iothub_dps_shared_access_policy.example.name
 resource_group_name = azurerm_iothub_dps_shared_access_policy.example.resource_group_name
}
