terraform {
  required_version = ">= 1.0.0"
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "2.95.0"
    }
  }
}

provider "azurerm" {
  features {
    
  }
}

resource "azurerm_resource_group" "my_demo_rg" {
    location = "westus" # Arguments
    name = "my_demo_rg"
 }

# resource "azurerm_storage_account" "devopsmleasa" {
#      name = "devopsmelasa"
#      resource_group_name = azurerm_resource_group.my_demo_rg.name
#      location = azurerm_resource_group.my_demo_rg.location
#      account_tier             = "Standard"
#      account_replication_type = "GRS"
#  }
