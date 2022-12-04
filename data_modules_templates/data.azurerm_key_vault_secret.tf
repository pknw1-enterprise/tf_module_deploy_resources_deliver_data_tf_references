data "azurerm_key_vault_secret" "example" {
 key_vault_id = azurerm_key_vault_secret.example.key_vault_id
 name = azurerm_key_vault_secret.example.name
}
