terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 3.0.0"
    }
  }
  required_version = ">= 1.3.0"
}

provider "azurerm" {
  features {}
  subscription_id = "5dbc091b-6607-4662-b21f-f231bd2df54d"
  resource_provider_registrations = "none"
}
