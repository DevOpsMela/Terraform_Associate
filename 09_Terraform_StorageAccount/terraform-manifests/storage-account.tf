resource "azurerm_storage_account" "devopsmelasa" {
    name = "devopsmelasa"
    resource_group_name = azurerm_resource_group.mygrp.name
    location = azurerm_resource_group.mygrp.location
    account_tier             = "Standard"
    account_replication_type = "LRS" 
}