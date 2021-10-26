terraform {
  required_version = ">=0.14.0"
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = ">= 2.0"
    }
  }
}

#provider1  east us
provider "azurerm" {
  features {}
}

#provider 2 west us
provider "azurerm" {
  features {
     virtual_machine {
       delete_os_disk_on_deletion = false
     }
  }
  alias = "provider2-westus"
}