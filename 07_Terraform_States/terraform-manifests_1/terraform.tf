terraform {
  required_version = ">= 1.0.0"
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = ">= 2.0.0"
    } 
  }
  backend "azurerm" {
    resource_group_name  = "devopsmela"
    storage_account_name = "devopsmelasa"
    container_name       = "tfstate"
    key                  = "prod.terraform.tfstate"
  }
}

provider "azurerm" {
  features{}
}

resource "azurerm_resource_group" "mygrp" {
    name = "mygrp"
    location = "eastus"
}
