data "azurerm_api_management_api" "example" {
 api_management_name = azurerm_api_management_api.example.api_management_name
 name = azurerm_api_management_api.example.name
 resource_group_name = azurerm_api_management_api.example.resource_group_name
 revision = azurerm_api_management_api.example.revision
 subscription_required = azurerm_api_management_api.example.subscription_required
}
