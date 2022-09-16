#This is //Work// branch
#Azure provider source and version
terraform {
  required_providers{
    azurerm = {
        source = "hashicorp/azure"
        version = "=3.0.0"
    }
  }
  backend "azurerm" {
    resource_group_name = "Test-RG-TR"
    storage_account_name = "testdiskbackupimmutable"
    container_name = "tfstatecnt"
    key = "myterraform.state"
  }
}

#Azure provider configuration/features
provider "azurerm"{
    features{}
}

data "azurerm_storage_account" "storage_detail"{
    value = azurerm_storage_account.storage_detail
}