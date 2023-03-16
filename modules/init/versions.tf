terraform {
  required_providers {
    aiven = {
      source  = "aiven/aiven"
      version = "< 5.0.0"
    }
  }
  required_version = ">=0.13.2"
}

provider "aiven" {
  api_token = var.access_token
}
