resource "azurerm_linux_virtual_machine" "myvm" {
  name                = "mygrp-machine"
  resource_group_name = azurerm_resource_group.mygrp.name
  location            = azurerm_resource_group.mygrp.location
  size                = "Standard_B1s"
  admin_username      = "adminuser"
  network_interface_ids = [
    azurerm_network_interface.mynic.id,
  ]

  admin_ssh_key {
    username   = "adminuser"
    public_key = file("~/.ssh/id_rsa.pub") #ssh-keygen -m PEM -t rsa -b 4096
  }

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "Canonical"
    offer     = "UbuntuServer"
    sku       = "16.04-LTS"
    version   = "latest"
  }
}