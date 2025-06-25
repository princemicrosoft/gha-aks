terraform {

  #   required_version = "~> 1.6"
  required_providers {
    # azapi = {
    #   source  = "Azure/azapi"
    #   version = ">= 2.2.0, < 3.0.0"
    # }
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.34.0"
    }

    # null = {
    #   version = "=3.1.0"
    # }
    # time = {
    #   version = "=0.9.1"
    # }
    # random = {
    #   source  = "hashicorp/random"
    #   version = "~> 3.5"
    # }
  }
}

provider "azurerm" {
  features {
    key_vault {
      purge_soft_delete_on_destroy    = true
      recover_soft_deleted_key_vaults = true
    }
  }

  #   client_id       = var.client_id
  #   client_secret   = var.client_secret
  #   tenant_id       = var.tenant_id
  #   subscription_id = var.subscription_id

  #   storage_use_azuread = true
  #   use_oidc            = true
}

# provider "azuread" {
#   use_oidc = true

# }

# provider "azapi" {
#   use_oidc = true
# }
