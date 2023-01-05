terraform {

  required_version = ">= 1.0.0"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "2.94.0"
    }
  }

  backend "azurerm" {
    resource_group_name  = "remote-state"
    storage_account_name = "guilhermeremotestate"
    container_name       = "remote-state"
    key                  = "azure-vm/terraform.tfstate"
  }
}

provider "azurerm" {
  features {}
}

data "terraform_remote_state" "vnet" {
  backend = "azurerm"
  config = {
    resource_group_name  = "remote-state"
    storage_account_name = "guilhermeremotestate"
    container_name       = "remote-state"
    key                  = "azure-vnet/terraform.tfstate"
  }
}
#terraform init
#terraform validate
#terraform plan -out=plan.out
#terraform apply plan.out 
#terraform destroy