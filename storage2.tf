resource "azurerm_storage_account" "rajeshstoarge" {
  name                     = "rajstoragename2"
 resource_group_name      = azurerm_resource_group.rajesh.name
  location                 = azurerm_resource_group.rajesh.location
  account_tier             = "Standard"
  account_replication_type = "GRS"

  tags = {
    environment = "staging"
  }
}

resource "azurerm_storage_container" "rajeshcontainer" {
  name                  = "rajcontname2"
  storage_account_name  = azurerm_storage_account.rajeshstoarge.name
  container_access_type = "private"
}