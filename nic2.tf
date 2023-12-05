resource "azurerm_network_interface" "rajeshnic" {
  name                = var.nic-name
  location            = azurerm_resource_group.rajesh.location
  resource_group_name = azurerm_resource_group.rajesh.name

  ip_configuration {
    name                          = "internal"
    subnet_id                     = azurerm_subnet.rajeshsubnetA.id
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id = azurerm_public_ip.rajeship.id
  }
}
