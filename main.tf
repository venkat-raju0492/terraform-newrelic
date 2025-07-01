terraform {
  experiments = [module_variable_optional_attrs]
  backend "s3" {}
  required_providers {
    newrelic = {
      source  = "newrelic/newrelic"
      version = "2.41.2" 
    }
  } 
}

provider "newrelic" {
  api_key          = var.api_key
  account_id       = var.account_id
  region     = "US"
}

module "NRDashBoard" {
  source    = "./plugins/NRDashboard"
  project   = var.project
  env       = var.environment
  resources = local.resource
}