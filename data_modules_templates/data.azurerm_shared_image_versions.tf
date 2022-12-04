data "azurerm_shared_image_versions" "example" {
 gallery_name = azurerm_shared_image_versions.example.gallery_name
 image_name = azurerm_shared_image_versions.example.image_name
 resource_group_name = azurerm_shared_image_versions.example.resource_group_name
}
