


module "naming" {
  source  = "Azure/naming/azurerm"
  prefix = ["eit-devops-sandbox-dev"]
  suffix = [ "" ]
  unique-include-numbers = true
  unique-length	= 3
  unique-seed	= "asfdsfsdfsdafsdafdfasdfkjhfsdjk"
}

module "app_resource_group" {
  source  = "../src/resource_group"

  resource_group_name = module.naming.resource_group.name
  create_resource_group = true
  location = "ukwest"
  expires = "6"

}

module "vnet" {
  source  = "../src/vnet/"

  vnet_name              = module.naming.virtual_network.name
  vnet_resource_group    = module.naming.virtual_network.name
  vnet_resource_group_create  = true
  location = "ukwest"
  expires = "6"

}

/*
output "app_resource_group" {
  value = module.app_resource_group.config
}


output "netwoerking" {
  value = module.vnet.config
}

*/
output "data" {
  value = <<EOF

####################################################
# Th following resources have been created for you 
# and the terraform data sources produced to reference 
# the resources
#####################################################


  ${module.app_resource_group.config}
  #-----------------------
  ${module.vnet.config}
  
#######################################################
EOF
}