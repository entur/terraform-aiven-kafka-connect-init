variable "aiven_api_token" {}

provider "aiven" {
  api_token = var.aiven_api_token
}

provider "aiven" {
  api_token = var.aiven_api_token
  alias = "aiven-provider"
}

module "init" {
  source       = "../../modules/init"
  project_name = "entur-test"
  service_name = "entur-kafka-test-int"
  providers = {
    aiven = aiven.aiven-provider
  }
}
