data "azurerm_api_management_product" "example" {
 api_management_name = azurerm_api_management_product.example.api_management_name
 approval_required = azurerm_api_management_product.example.approval_required
 product_id = azurerm_api_management_product.example.product_id
 resource_group_name = azurerm_api_management_product.example.resource_group_name
 subscription_required = azurerm_api_management_product.example.subscription_required
}
