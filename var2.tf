variable "rg-name" {
    default = "rajesh"
    type = string
}
variable "rg-location" {
    default = "west us3"
    type = string
  }
  variable "vnet-name"{
    default = "rajeshvnet"
    type = string
  }
  variable "subnet-name" {
    default = "rajeshsubnetA"
    type = string
  }
  variable "vnetcidr-address" {
    default = ["192.168.0.0/16"]
    type = list(string)    
  }
  variable "subnetcidr-address" {
    default = ["192.168.0.0/24"]
    type = list(string)
  }
  variable "nic-name" {
    default = "rajeshnic"
    type = string
  }
  variable "nsg-name" {
    default = "rajeshnsg"
    type = string
  }
  variable "public-name" {
    default = "rajeship"
    type = string
  }
  variable "virtual-machine" {
    default = "rajeshvm"
    type = string
  }
  