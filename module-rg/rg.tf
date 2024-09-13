resource "azurerm_resource_group" "rg" {
  name = var.rg 
  location = var.location
}


variable "rg" {
  type = string
  description = "RG Name"
}

variable "location" {
  type = string
  description = "Location"
}

output "rg_name" {
  value = azurerm_resource_group.rg.name
}

output "location" {
  value = azurerm_resource_group.rg.location
}