# Configure the Azure provider
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"
    }
  }
}

provider "azurerm" {
  features {}
}

# Create the Resource Group
resource "azurerm_resource_group" "eastus_rg" {
  name     = "rg-production-eastus"
  location = "East US"

  tags = {
    Environment = "Production"
    Project     = "Core-Infrastructure"
  }
}
