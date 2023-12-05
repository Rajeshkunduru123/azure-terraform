resource "azurerm_virtual_network" "rajeshvnet" {
  name                = var.vnet-name
  address_space       = var.vnetcidr-address
  location            = azurerm_resource_group.rajesh.location
  resource_group_name = azurerm_resource_group.rajesh.name
}

resource "azurerm_subnet" "rajeshsubnetA" {
  name                 = var.subnet-name
  resource_group_name  = azurerm_resource_group.rajesh.name
  virtual_network_name = azurerm_virtual_network.rajeshvnet.name
  address_prefixes     = var.subnetcidr-address
}

