# Storage Account
resource "azurerm_storage_account" "fis_storage" {
  name                     = var.storage_account_name
  resource_group_name      = azurerm_resource_group.fisrg.name
  location                 = azurerm_resource_group.fisrg.location
  account_tier             = var.storage_account_tier
  account_replication_type = var.storage_account_replication_type

  tags = var.tags
}