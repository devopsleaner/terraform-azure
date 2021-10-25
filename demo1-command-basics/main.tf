terraform {
  required_version = ">=1.0.8"
  required_providers {
    azurerm={
        source = "hashicorp/azurerm"
        version = ">=2.0"
    }
  }
}

provider "azurerm" {
    features {
      
    }
  
}


resource "azurerm_resource_group" "my_demo_rg1" {
    location = "uksouth"
    name = "my_demo_rg1"  
}