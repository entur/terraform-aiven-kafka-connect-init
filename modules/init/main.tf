data "aiven_project" "entur-aiven-project" {
  project = var.project_name
}

data "aiven_service_component" "schema-registry" {
  project      = data.aiven_project.entur-aiven-project.project
  service_name = var.kafka_service_name
  component    = "schema_registry"
  route        = "dynamic"
}

locals {
  aiven = {
    access_token       = var.access_token
    project            = data.aiven_project.entur-aiven-project.project
    kafka_service_name = var.kafka_service_name
    connect_service_name = length(trimspace(var.connect_service_name)) == 0 ? join("-", [
      var.kafka_service_name, "connect"
    ]) : var.connect_service_name
    schema_registry_url = "https://${data.aiven_service_component.schema-registry.host}:${data.aiven_service_component.schema-registry.port}"
  }
  default_configuration = {
    "tasks.max" : var.tasks_max,
    "key.converter" : var.key_converter,
    "value.converter" : var.value_converter,
    "value.converter.schema.registry.url" : local.aiven.schema_registry_url,
    "value.converter.basic.auth.credentials.source" : "USER_INFO"
  }
}
