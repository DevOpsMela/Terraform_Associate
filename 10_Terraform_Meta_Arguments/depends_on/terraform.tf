terraform {
  required_version = ">= 1.0.0"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "2.97.0"
    }
  }
}

provider "azurerm" {
  features {}
}


resource "azurerm_resource_group" "mygrp" {
  name = "mygrp"
  location = "eastus"
}

resource "azurerm_storage_account" "devopsmelasa" {
    
    name = "devopsmelasa"
    resource_group_name = azurerm_resource_group.mygrp.name
    location = azurerm_resource_group.mygrp.location
    account_tier             = "Standard"
    account_replication_type = "LRS" 

depends_on = [
  azurerm_resource_group.mygrp,
]

}