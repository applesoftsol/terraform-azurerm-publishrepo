resource "azurerm_resource_group" "example" {
  name     = var.rg
  location = var.location
}
module "vnet" {
  source              = "Azure/vnet/azurerm"
  resource_group_name = azurerm_resource_group.example.name
  address_space       = ["14.0.0.0/16"]
  subnet_prefixes     = ["14.0.1.0/24", "14.0.2.0/24", "14.0.3.0/24"]
  subnet_names        = ["subnet1", "subnet2", "subnet3"]
}
