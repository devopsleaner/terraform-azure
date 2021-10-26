resource "azurerm_resource_group" "myrg1" {
  name="myrg-1"
  location = "East US"
}


resource "azurerm_resource_group" "myrg2" {
  name = "myrg2"
  location = "West US"
  provider = azurerm.provider2-westus #meta arguments
}