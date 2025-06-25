# RG
rg_name = "fis-prod-rg"
# Location
location = "West US"
# Key Vault variables
kv_sku = "standard"
# Storage Account variables
storage_account_name             = "fisteststaprince"
storage_account_tier             = "Standard"
storage_account_replication_type = "LRS"
# VNET variables
vnet_address_space      = ["11.0.0.0/16"]
subnet_address_prefixes = ["11.0.1.0/24"]
# Tags
tags = {
  environment = "demo"
  project     = "fistest"
  owner       = "fiststprince"
}
