data "azurerm_sql_database" "example" {
 name = azurerm_sql_database.example.name
 resource_group_name = azurerm_sql_database.example.resource_group_name
 server_name = azurerm_sql_database.example.server_name
}
