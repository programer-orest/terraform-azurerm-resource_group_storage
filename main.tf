terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.105.0"
    }
  }
}

provider "azurerm" {
  features {
    resource_group {
      prevent_deletion_if_contains_resources = false
    }
  }
}

module "resource_group_storage" {
  source  = "app.terraform.io/mate_Or4ik/resource_group_storage/azurerm"
  version = "1.0.0"
}