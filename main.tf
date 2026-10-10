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
    key                  = "terraform.tfstate"
    use_oidc             = true
  }
}

provider "azurerm" {
  features {}
  use_oidc = true
}

resource "azurerm_resource_group" "rg" {
  name     = "demo-action-rg"
  location = var.location

  tags = {
    Environment = "Dev"
    ManagedBy   = "Terraform"
  }
}

resource "azurerm_resource_group" "rg1" {
  name     = "demo-action-rg2"
  location = var.location

  tags = {
    Environment = "prod"
    ManagedBy   = "Terraform"
  }
}

resource "azurerm_resource_group" "rg2" {
  name     = "demo-action-rg2"
  location = var.location

  tags = {
    Environment = "test"
    ManagedBy   = "Terraform"
  }
}
