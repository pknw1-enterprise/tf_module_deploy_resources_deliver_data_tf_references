data "azurerm_backup_policy_vm" "example" {
 name = azurerm_backup_policy_vm.example.name
 recovery_vault_name = azurerm_backup_policy_vm.example.recovery_vault_name
 resource_group_name = azurerm_backup_policy_vm.example.resource_group_name
}
