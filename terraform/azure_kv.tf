# Key Vault
resource "azurerm_key_vault" "fis_keyvault" {
  name                = "${var.rg_name}-kv"
  location            = azurerm_resource_group.fisrg.location
  resource_group_name = azurerm_resource_group.fisrg.name
  tenant_id           = data.azurerm_client_config.current.tenant_id
  sku_name            = var.kv_sku

  tags = var.tags

  access_policy {
    tenant_id = data.azurerm_client_config.current.tenant_id
    object_id = data.azurerm_client_config.current.object_id

    key_permissions         = ["Get", "List"]
    secret_permissions      = ["Get", "List"]
    certificate_permissions = ["Get", "List"]
  }
}
