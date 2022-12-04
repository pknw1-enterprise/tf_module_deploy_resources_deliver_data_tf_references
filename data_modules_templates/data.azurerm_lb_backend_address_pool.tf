data "azurerm_lb_backend_address_pool" "example" {
 loadbalancer_id = azurerm_lb_backend_address_pool.example.loadbalancer_id
 name = azurerm_lb_backend_address_pool.example.name
}
