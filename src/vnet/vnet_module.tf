
module "vnet_resource_group" {
  source  = "../resource_group/"

  resource_group_name   = local.vnet_name
  location = var.location
  create_resource_group = var.vnet_resource_group_create
  expires = "6"

}
variable "vnet_resource_group_create" {}
variable "vnet_resource_group" {}
variable "vnet_name" {}

variable "location" {}
variable "address_space" { default = ""}

variable "tags" { default = {}}
variable "expires" {default = ""}
variable "subnet_names" { default = []}



module "naming" {
  source  = "Azure/naming/azurerm"
  prefix = [""]
  suffix = [ "" ]
  unique-include-numbers = true
  unique-length	= 3
  unique-seed	= "asfdsfsdfsdafsdafdfasdfkjhfsdjk"
}

provider "azurerm" {
 features {}
 subscription_id = "625b66d7-5b11-40fb-99ab-ba303c13ea88" 
}


locals {
    vnet_name = var.vnet_name != "" ? var.vnet_name : module.naming.virtual_network.name
    vnet_resource_group = var.vnet_resource_group != "" ? var.vnet_resource_group : module.naming.virtual_network.name
    address_space = var.address_space != "" ? var.address_space : "10.0.0.0/8"
    dns_servers = ["8.8.8.8"]
}

resource "azurerm_virtual_network" "vnet" {
  name                = local.vnet_name
  location            = var.location
  resource_group_name = local.vnet_resource_group
  address_space       = [ local.address_space ]
  dns_servers         = local.dns_servers
  provider            = azurerm
  tags                = merge(var.tags)
}

#-------------------------------
# Subnet creation by specifying a list of subnet names
#-------------------------------


resource "azurerm_subnet" "subnet" {
  count                = length(var.subnet_names)
  name                 = var.subnet_names[count.index]
  resource_group_name = local.vnet_resource_group
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = [cidrsubnet(element(azurerm_virtual_network.vnet.address_space,0),3,count.index)]
  provider             = azurerm
}


resource "local_file" "vnet" {
    content  = <<EOF
data "azurerm_resource_group" "${local.vnet_name}" {
  name = "${local.vnet_resource_group}"
}

data "azurerm_virtual_network" "vnet" {
  name = "${local.vnet_name}"
  resource_group_name = "${local.vnet_resource_group}"

}

    EOF
    filename = "user_setup/${local.vnet_name}.tf"
}

output "config" {
  value = local_file.vnet.content
}

