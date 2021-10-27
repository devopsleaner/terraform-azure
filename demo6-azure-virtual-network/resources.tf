resource "random_string" "my_random" {
  length = 6
  upper = false
  special = false
  number = false

}


resource "azurerm_resource_group" "rg" {
  name = "${local.resource_name_prefix}-${var.resource_group_name}-${random_string.my_random.id}"
  location = var.resource_group_location
  tags = local.common_tags
}