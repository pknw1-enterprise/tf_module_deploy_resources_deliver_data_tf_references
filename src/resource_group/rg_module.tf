variable "resource_group_name" {}
variable "create_resource_group" {}
variable "location" {}
variable "tags" { default = ""}
variable "expires" {default = ""}



provider "azurerm" {
 features {}
 subscription_id = "625b66d7-5b11-40fb-99ab-ba303c13ea88" 
}

module "naming" {
  source  = "Azure/naming/azurerm"
  prefix = [""]
  suffix = [ "" ]
  unique-include-numbers = true
  unique-length	= 3
  unique-seed	= "asfdsfsdfsdafsdafdfasdfkjhfsdjk"
}

locals {
  resource_group_name = var.resource_group_name != "" ? var.resource_group_name : module.naming.resource_group.name
  expires = var.expires != "" ? var.expires : "1"
   tags = {
    Environment   = "${terraform.workspace}"
    Created       = timestamp()
    Expires = local.expires
    expireOn = local.expires

  }
}

resource "azurerm_resource_group" "resource_group" {

  count = var.create_resource_group == true ? 1 : 0

  name      = local.resource_group_name
  location  = var.location
  tags      = local.tags
  }


resource "local_file" "resource_groups" {
    content  = <<EOF
data "azurerm_resource_group" "${local.resource_group_name}" {
  # data reference to pre-provisioned resource group

  name = "${local.resource_group_name}"
}
    EOF
    filename = "user_setup/${local.resource_group_name}.tf"
}

output "config" {
  value = local_file.resource_groups.content
}


output "name" {
  value = local.resource_group_name
}