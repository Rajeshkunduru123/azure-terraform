resource "azurerm_virtual_machine" "rajeshvm" {
  name                  = var.virtual-machine
  location              = azurerm_resource_group.rajesh.location
  resource_group_name   = azurerm_resource_group.rajesh.name
  network_interface_ids = [azurerm_network_interface.rajeshnic.id]
  vm_size               = "Standard_DS1_v2"

  # Uncomment this line to delete the OS disk automatically when deleting the VM
  # delete_os_disk_on_termination = true

  # Uncomment this line to delete the data disks automatically when deleting the VM
  # delete_data_disks_on_termination = true

  storage_image_reference {
    publisher = "Canonical"
    offer     = "0001-com-ubuntu-server-jammy"
    sku       = "22_04-lts"
    version   = "latest"
  }
  storage_os_disk {
    name              = "myosdisk2"
    caching           = "ReadWrite"
    create_option     = "FromImage"
    managed_disk_type = "Standard_LRS"
  }
  os_profile {
    computer_name  = "rajesh1"
    admin_username = "rajesh"
    admin_password = "rajesh@123"
  }
  os_profile_linux_config {
    disable_password_authentication = false
  }
  tags = {
    environment = "staging"
  }
  connection {
    type     = "ssh"
    user     = "rajesh"
    password = "rajesh@123"
    host     = azurerm_public_ip.rajeship.ip_address
  }

  provisioner "remote-exec" {
    inline = [
      "sudo apt-get update", 
      "sudo apt-get install nginx -y",
      "sudo apt-get install zip -y" ,
      "sudo apt-get install unzip -y",
      "wget https://www.free-css.com/assets/files/free-css-templates/download/page296/carvilla.zip",
      "sudo unzip carvilla.zip",
      "sudo mv carvilla-v1.0 /var/www/html"
    ]
  }
}
