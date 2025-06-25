# RG
variable "rg_name" {
  description = "The name of the resource group for the Container Apps environment."
  type        = string

}
# Location
variable "location" {
  description = "The Azure region where the resources will be deployed."
  type        = string
}

# Key Vault variables
variable "kv_sku" {
  description = "The SKU name for the Key Vault."
  type        = string
  default     = "standard"
}

# Storage Account variables
variable "storage_account_name" {
  description = "The name of the storage account for the Container Apps environment."
  type        = string

}

variable "storage_account_tier" {
  description = "The tier of the storage account."
  type        = string
  default     = "Standard"

}
variable "storage_account_replication_type" {
  description = "The replication type of the storage account."
  type        = string
  default     = "LRS"

}
# VNET variables
variable "vnet_address_space" {
  description = "The address space for the virtual network."
  type        = list(string)
}

variable "subnet_address_prefixes" {
  description = "The address prefixes for the subnet."
  type        = list(string)
}
# Tags
variable "tags" {
  description = "Tags to apply to the resources."
  type        = map(string)
  default     = {}

}
