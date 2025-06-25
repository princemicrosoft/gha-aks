#Backend
terraform {
  backend "azurerm" {
    resource_group_name  = "fis-mgmt"
    storage_account_name = "fisstamgmt"
    container_name       = "tfstatefiles"
    key                  = "terraform.tfstate"
    # use_oidc             = true
    # use_azuread_auth     = true
  }
}
