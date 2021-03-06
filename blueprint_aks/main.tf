data "azurerm_client_config" "current" {}

locals {
  blueprint_tag = {
    "blueprint" = basename(abspath(path.module))
  }
  tags   = merge(var.tags, local.blueprint_tag)
  prefix = var.prefix
}

terraform {
  required_providers {
    azurecaf = {
      source = "aztfmod/azurecaf"
    }
    azurerm = {
      source = "hashicorp/azurerm"
    }
  }
}