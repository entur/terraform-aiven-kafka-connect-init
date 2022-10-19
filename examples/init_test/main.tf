variable "api_token" {}
module "init" {
  source         = "../../modules/init"
  access_token   = var.api_token
  project_name   = "my-aiven-project-name"
  service_name   = "my-aiven-service-name"
  connector_name = "my-connector-name"
}
