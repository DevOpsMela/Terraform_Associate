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
  location = "eastus"
}

resource "azurerm_resource_group" "mygrp" {
  name = "mygrp"
  location = "eastus"

  #  lifecycle {
  #   create_before_destroy = true
  # }
}