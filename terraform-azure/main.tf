module "rg" {
  source = "../module-rg"
  location = "north europe"
  rg = "tftestrg"
}

resource "azurerm_resource_group" "group" {
  name = "testrg02"
  location = "westus"
}

output "rg_name" {
  value = module.rg.rg_name
}

output "rg_location" {
  value = module.rg.location
}

provider "azurerm" {
  features {
    
  }
  subscription_id = "7d36b290-05bd-4bc4-a670-89b4e4749eb3"
}