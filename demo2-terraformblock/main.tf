terraform {
  required_version = ">=0.14.0"
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      # version = ">= 2.0"
        # version = ">= 2.0.0, < 2.60.0"
            version = ">= 2.0.0, <= 2.64.0"
    }
  }
}

provider "azurerm" {
  features {
    
  }
}