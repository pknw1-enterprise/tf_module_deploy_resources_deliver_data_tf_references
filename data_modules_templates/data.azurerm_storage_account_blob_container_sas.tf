data "azurerm_storage_account_blob_container_sas" "example" {
 connection_string = azurerm_storage_account_blob_container_sas.example.connection_string
 container_name = azurerm_storage_account_blob_container_sas.example.container_name
 expiry = azurerm_storage_account_blob_container_sas.example.expiry
 start = azurerm_storage_account_blob_container_sas.example.start
 add = azurerm_storage_account_blob_container_sas.example.add
 create = azurerm_storage_account_blob_container_sas.example.create
 delete = azurerm_storage_account_blob_container_sas.example.delete
 list = azurerm_storage_account_blob_container_sas.example.list
 read = azurerm_storage_account_blob_container_sas.example.read
 write = azurerm_storage_account_blob_container_sas.example.write
}
