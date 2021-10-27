#generic input variables

variable "business_division" {
    description = "Business division in the large org this infrastructure belongs to"
    type = string
    default = "sap"  
}


#environment variable

variable "environment" {
  description = "Environment variable used as a prefix"
  default = "dev"
  type = string
}

#Azure resource group name

variable "resource_group_name" {
  description = "Resource group name"
  default = "rg-default"
  type = string
}

#Azure resource group location

variable "resource_group_location" {
  description = "Region in which resources should be created"
  default = "eastus2"
  type = string
}

