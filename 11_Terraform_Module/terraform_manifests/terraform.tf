## Trail Run
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


module "rg" {
  source  = "claranet/rg/azurerm"
  version = "5.0.1"
  # insert the 4 required variables here
  client_name = "DevOps Mela"
  environment = "Development"
  location = "eastus"
  stack = "DevOps Project"
}



# module "rg" {
#   source  = "claranet/rg/azurerm"
#   version = "5.0.1"
#   # insert the 4 required variables here
#   client_name = "DevOpsMela"
#   environment = "development"
#   location = "eastus"
#   stack = "dev_stack"
# }
