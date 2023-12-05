terraform {
  backend "azurerm" {
    resource_group_name  = "rajesh"
    storage_account_name = "rajstoragename2"
    container_name       = "rajcontname2"
    key                  = "prod.terraform.tfstate"
  }
}
