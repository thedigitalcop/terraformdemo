terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.47.0"
    }
  }
}


provider "azurerm" {
  # Configuration options
  client_id                   = var.client_id
  client_secret               = var.client_secret
  tenant_id                   = var.tenant_id
  subscription_id             = var.subscription_id
  features {
  }
}


resource "azurerm_resource_group" "rg-pipeline" {
  name     = "${var.name}"
  location = "West Europe"


}

