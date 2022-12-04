data "azurerm_lb_rule" "example" {
 loadbalancer_id = azurerm_lb_rule.example.loadbalancer_id
 name = azurerm_lb_rule.example.name
 resource_group_name = azurerm_lb_rule.example.resource_group_name
}
