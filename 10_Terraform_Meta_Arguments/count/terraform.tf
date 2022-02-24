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
  # name     = "myrg-${count.index}"
  name = "mygrp"
  location = "East US"
  # count    = 4
}

# Indexing:
# list = ["a","b","c","d"]
# list[0] = a
# list[1] = b
# list [-1] = d

# mygrp-0
# mygrp-1
# mygrp-2
# mygrp-3