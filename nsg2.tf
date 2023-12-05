resource "azurerm_network_security_group" "rajeshnsg" {
  name                = var.nsg-name
  location            = azurerm_resource_group.rajesh.location
  resource_group_name = azurerm_resource_group.rajesh.name

  security_rule {
    name                       = "test123"
    priority                   = 100
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "*"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }

  tags = {
    environment = "Production"
  }
}
