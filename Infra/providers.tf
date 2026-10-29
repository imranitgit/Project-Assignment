terraform {
  required_version = ">= 1.6"
  required_providers {
    azurerm = { source = "hashicorp/azurerm", version = "~> 4.0" }
    random  = { source = "hashicorp/random", version = "~> 3.6" }
  }
  backend "azurerm" {} # values injected by the pipeline at init time
}

provider "azurerm" {
  features {}
  # subscription comes from ARM_SUBSCRIPTION_ID, auth from the pipeline's az login
}
