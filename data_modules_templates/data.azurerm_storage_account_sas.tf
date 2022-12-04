data "azurerm_storage_account_sas" "example" {
 connection_string = azurerm_storage_account_sas.example.connection_string
 expiry = azurerm_storage_account_sas.example.expiry
 start = azurerm_storage_account_sas.example.start
 add = azurerm_storage_account_sas.example.add
 create = azurerm_storage_account_sas.example.create
 delete = azurerm_storage_account_sas.example.delete
 list = azurerm_storage_account_sas.example.list
 process = azurerm_storage_account_sas.example.process
 read = azurerm_storage_account_sas.example.read
 update = azurerm_storage_account_sas.example.update
 write = azurerm_storage_account_sas.example.write
 container = azurerm_storage_account_sas.example.container
 object = azurerm_storage_account_sas.example.object
 service = azurerm_storage_account_sas.example.service
 blob = azurerm_storage_account_sas.example.blob
 file = azurerm_storage_account_sas.example.file
 queue = azurerm_storage_account_sas.example.queue
 table = azurerm_storage_account_sas.example.table
}
