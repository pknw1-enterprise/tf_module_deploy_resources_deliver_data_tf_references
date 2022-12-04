data "azurerm_storage_table_entity" "example" {
 partition_key = azurerm_storage_table_entity.example.partition_key
 row_key = azurerm_storage_table_entity.example.row_key
 storage_account_name = azurerm_storage_table_entity.example.storage_account_name
 table_name = azurerm_storage_table_entity.example.table_name
}
