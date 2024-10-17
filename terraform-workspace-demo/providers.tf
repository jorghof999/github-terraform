# Konfigurerer Terraform til å bruke Azure Resource Manager (azurerm) provider
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.0.1"
        }
      }
      backend "azurerm" {
        resource_group_name  = "jhnrgbackend"              # Can be passed via `-backend-config=`"resource_group_name=<resource group name>"` in the `init` command.
        storage_account_name = "jhnsabv7onw"                  # Can be passed via `-backend-config=`"storage_account_name=<storage account name>"` in the `init` command.
        container_name       = "jhnscbackend"               # Can be passed via `-backend-config=`"container_name=<container name>"` in the `init` command.
        key                  = "temp.terraform.tfstate" # Can be passed via `-backend-config=`"key=<blob key name>"` in the `init` command.
      }
}

# Definerer Azure Resource Manager (azurerm) provider og spesifiserer abonnement ID
provider "azurerm" {
  subscription_id = "c07d12e1-5880-4a69-837d-8004c99145fc"
  features {
    }
  }