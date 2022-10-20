output "aiven" {
  description = "Aiven configuration like (project, service etc)"
  value       = local.aiven
}

output "schema_registry" {
  description = "Details of Kafka schema registry component of Aiven Kafka service"
  value       = local.schema_registry
}

output "default_configuration" {
  description = "A map of default configuration options for any connector"
  value       = local.default_configuration
}
