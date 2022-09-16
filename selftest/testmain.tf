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