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

# Resource-1: Azure Resource Group
resource "azurerm_resource_group" "myrg" {
  for_each = {
    dc1apps = "eastus"
    dc2apps = "eastus2"
    dc3apps = "westus"
  }
  name = each.key
  location = each.value
}


# for_each -- looping
# for ["a","b","c","d"] in {1,2,3,4}
# a = 1
# b = 2
# c = 3
# d = 4

# dc1apps --> eastus

