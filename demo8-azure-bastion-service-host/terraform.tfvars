business_division = "hr"
environment = "dev"
resource_group_name = "rg"
resource_group_location = "uksouth"

vnet_name = "vnet-01"
vnet_address_space = [ "10.2.0.0/16" ]

web_subnet_name = "websubnet-01"
web_subnet_address = [ "10.2.2.0/24" ]

app_subnet_name = "appsubnet-01"
app_subnet_address = [ "10.2.11.0/24" ]

db_subnet_name = "dbsubnet-01"
db_subnet_address = [ "10.2.21.0/24" ]

bastion_subnet_name = "bastionsubnet"
bastion_subnet_address = [ "10.2.100.0/24" ]


bastion_service_subnet_name = "AzureBastionSubnet"
bastion_service_address_prefixes  = ["10.2.101.0/27"]
