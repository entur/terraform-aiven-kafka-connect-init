terraform {
  required_providers {
    aiven = {
      source  = "aiven/aiven"
      version = ">= 3.0.0, < 4.0.0"
    }
    google = {
      source  = "hashicorp/google"
      version = ">=4.40.0"
    }
  }
  required_version = ">=0.13.2"
}
