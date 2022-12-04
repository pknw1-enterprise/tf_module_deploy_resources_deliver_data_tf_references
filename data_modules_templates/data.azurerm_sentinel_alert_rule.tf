data "azurerm_sentinel_alert_rule" "example" {
 log_analytics_workspace_id = azurerm_sentinel_alert_rule.example.log_analytics_workspace_id
 name = azurerm_sentinel_alert_rule.example.name
}
