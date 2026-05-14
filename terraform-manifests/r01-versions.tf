terraform {
  required_version = ">= 1.14.3"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 4.58.0"
    }
    random = {
      source  = "hashicorp/random"
      version = ">= 3.8.1"
    }
  }

  # Terraform State Storage to Azure Storage Container
 /* backend "azurerm" {
    resource_group_name  = "terraform-storage-rg"
    storage_account_name = "terraformstate365"
    container_name       = "tfstatefiles"
    key                  = "project-1-eastus2-terraform.tfstate"
  }*/
}

provider "azurerm" {
  features {}
  #resource_provider_registrations = "none" # This is only required when the User, Service Principal, or Identity running Terraform lacks the permissions to register Azure Resource Providers.
  subscription_id = "e8153bc3-a9f9-4937-aa70-290a514fa3c4"
}

provider "random" {
  # Configuration options
}

#Added change to test
#QA, Stage and Prod  env added