# ci: x-release-please-start-version

variable "api_token" {}

provider "aiven" {
  api_token = var.api_token
}

provider "aiven" {
  api_token = var.api_token
  alias     = "aiven-provider"
}

module "init" {
  # This is an example only; if you're adding this block to a live configuration,
  # make sure to use the latest release of the init module, found here:
  # https://github.com/entur/terraform-aiven-kafka-connect-init/releases
  source       = "github.com/entur/terraform-aiven-kafka-connect-init//modules/init?ref=v1.1.2"
  project_name = "my-aiven-project-name"
  service_name = "my-aiven-service-name"
  providers = {
    aiven = aiven.aiven-provider
  }
}

# ci: x-release-please-end
