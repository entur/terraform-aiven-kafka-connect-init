output "connector" {
  description = "Description of connector resources(name, class, project, service etc)"
  value       = local.connector
}

output "schema_registry" {
  description = "Details of Kafka schema registry component of Aiven Kafka service"
  value       = local.schema_registry
}

output "default_configuration" {
  description = "A map of default configuration options for any connector"
  value       = local.default_configuration
}

output "access_token" {
  description = "Aiven API access token"
  value       = var.access_token
}
