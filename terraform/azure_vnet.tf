# VNET
resource "azurerm_virtual_network" "fis_vnet" {
  name                = "${var.rg_name}-vnet"
  location            = azurerm_resource_group.fisrg.location
  resource_group_name = azurerm_resource_group.fisrg.name
  address_space       = var.vnet_address_space
  tags                = var.tags
}
# Subnet
resource "azurerm_subnet" "fis_subnet" {
  name                 = "${var.rg_name}-snet"
  resource_group_name  = azurerm_resource_group.fisrg.name
  virtual_network_name = azurerm_virtual_network.fis_vnet.name
  address_prefixes     = var.subnet_address_prefixes
}