# ci: x-release-please-start-version

variable "api_token" {}
module "init" {
  source         = "github.com/entur/terraform-aiven-kafka-connect-init/modules/init?ref=v1.1.0"
  access_token   = var.api_token
  project_name   = "my-aiven-project-name"
  service_name   = "my-aiven-service-name"
  connector_name = "my-connector-name"
}

# ci: x-release-please-end
