variable "aiven_api_token" {}
module "init" {
  source             = "../../modules/init"
  access_token       = var.aiven_api_token
  project_name       = "entur-test"
  kafka_service_name = "entur-kafka-test-int"
}

output "init-module-outputs" {
  value = module.init.aiven
}
