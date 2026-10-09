terraform {
  required_version = ">= 1.5.0"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"
    }
  }

  # For production, configure an Azure Storage backend here:
  backend "azurerm" {
    resource_group_name  = "rg-tfstate"
    storage_account_name = "tfstatefiledmo"
    container_name       = "tfstate"
    key                  = "rg.terraform.tfstate"
    use_oidc             = true
   }
}

provider "azurerm" {
  features {}
  use_oidc = true
}

resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = var.location

  tags = {
    Environment = "Dev"
    ManagedBy   = "Terraform"
  }
}
