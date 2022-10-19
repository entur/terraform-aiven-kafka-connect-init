data "aiven_project" "entur-aiven-project" {
  project = var.project_name
}

data "aiven_service_component" "schema-registry" {
  project      = data.aiven_project.entur-aiven-project.project
  service_name = var.service_name
  component    = "schema_registry"
  route        = "dynamic"
}

data "aiven_kafka_user" "kafka_admin" {
  project      = data.aiven_project.entur-aiven-project.project
  service_name = var.service_name
  username     = var.service_registry_username
}

locals {
  access_token = var.access_token
  connector = {
    name    = var.connector_name
    project = data.aiven_project.entur-aiven-project.project
    service = var.service_name
  }
  schema_registry = {
    url      = "https://${data.aiven_service_component.schema-registry.host}:${data.aiven_service_component.schema-registry.port}"
    userinfo = "${data.aiven_kafka_user.kafka_admin.username}:${data.aiven_kafka_user.kafka_admin.password}"
  }
  default_configuration = {
    "name" : var.connector_name
    "tasks.max" : var.tasks_max,
    "key.converter" : var.key_converter,
    "value.converter" : var.value_converter,
    "value.converter.schema.registry.url" : local.schema_registry.url,
    "value.converter.basic.auth.credentials.source" : "USER_INFO",
    "value.converter.schema.registry.basic.auth.user.info" : local.schema_registry.userinfo
  }
}
