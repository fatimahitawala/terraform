terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>3.0"
    }
  }
}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "newrg" {
  name     = "newrg-resources"
  location = "East US"
}

resource "azurerm_virtual_network" "newrg" {
  name                = "newrg-network"
  location            = azurerm_resource_group.newrg.location
  resource_group_name = azurerm_resource_group.newrg.name
  address_space       = ["10.0.0.0/16"]

  subnet {
    name           = "subnet1"
    address_prefix = "10.0.1.0/24"
  }
}
