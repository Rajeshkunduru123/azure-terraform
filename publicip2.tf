resource "azurerm_public_ip" "rajeship" {
  name                = var.public-name
  resource_group_name = azurerm_resource_group.rajesh.name
  location            = azurerm_resource_group.rajesh.location
  allocation_method   = "Static"

  tags = {
    environment = "Production"
  }
}
