# RG
resource "azurerm_resource_group" "fisrg" {
  name     = var.rg_name
  location = var.location
  tags     = var.tags
}