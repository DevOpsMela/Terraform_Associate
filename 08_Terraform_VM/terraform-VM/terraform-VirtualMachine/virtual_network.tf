resource "azurerm_virtual_network" "myvnet" {
  name                = "myvnet"
  address_space       = ["10.0.0.0/16"]
  location            = azurerm_resource_group.devopsmela-rg.location
  resource_group_name = azurerm_resource_group.devopsmela-rg.name
}

resource "azurerm_subnet" "mysubnet" {
  name                 = "mysubnet"
  resource_group_name  = azurerm_resource_group.devopsmela-rg.name
  virtual_network_name = azurerm_virtual_network.myvnet.name
  address_prefixes     = ["10.0.2.0/24"]
}

resource "azurerm_public_ip" "mypublicIP" {

  depends_on = [
    azurerm_virtual_network.myvnet,
    azurerm_subnet.mysubnet
  ]

  name                = "mypublicip-1"
  resource_group_name = azurerm_resource_group.devopsmela-rg.name
  location            = azurerm_resource_group.devopsmela-rg.location
  allocation_method   = "Static"
  domain_name_label   = "app1-vm-devopsmela"
  tags = {
    environment = "Dev"
  }
}

resource "azurerm_network_interface" "mynic" {
  name                = "mygrp-nic"
  location            = azurerm_resource_group.devopsmela-rg.location
  resource_group_name = azurerm_resource_group.devopsmela-rg.name

  ip_configuration {
    name                          = "internal"
    subnet_id                     = azurerm_subnet.mysubnet.id
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id          = azurerm_public_ip.mypublicIP.id
  }
}