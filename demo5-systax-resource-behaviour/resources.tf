resource "azurerm_resource_group" "myrg1" {
  name="myrg1"
  location = "uksouth"
}

resource "azurerm_virtual_network" "myvnet" {
    name = "myvnet-1"
    address_space = [ "10.0.0.0/16" ]
    location = azurerm_resource_group.myrg1.location
    resource_group_name = azurerm_resource_group.myrg1.name
    tags = {
      "name" = "myvnet1"
      "Environment" = "Dev"
    }  
}


resource "azurerm_subnet" "mysubnet" {
    name    =  "mysubnet-1"
    resource_group_name = azurerm_resource_group.myrg1.name
    virtual_network_name = azurerm_virtual_network.myvnet.name  
    address_prefixes = [ "10.0.2.0/24" ]
}


resource "azurerm_public_ip" "mypublicip" {
  name = "mypublicip-1"
  resource_group_name = azurerm_resource_group.myrg1.name
  location = azurerm_resource_group.myrg1.location
  allocation_method = "Static"
  tags = {
    "environment" = "dev"
  }
}


resource "azurerm_network_interface" "myvmnic" {
    name= "myvm-nic2"
    location = azurerm_resource_group.myrg1.location
    resource_group_name = azurerm_resource_group.myrg1.name
    ip_configuration {
        name                          = "internal"
        subnet_id                     = azurerm_subnet.mysubnet.id
        private_ip_address_allocation = "Dynamic"
        public_ip_address_id = azurerm_public_ip.mypublicip.id
    }
}