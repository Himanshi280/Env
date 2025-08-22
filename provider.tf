terraform {
  required_version = ">= 1.9.0"
  required_providers {
    newrelic = {
      source = "newrelic/newrelic"
      version = "~>3.43" # pick latest from registry
    }

  }
}

# Configure the New Relic provider
provider "newrelic"{
  account_id = var.newrelic_account_id
  api_key    = var.newrelic_api_key # Usually prefixed with 'NRAK'
  region     = "US"                               # Valid regions are US and EU
}
