output "aiven" {
  description = "Aiven configuration like (project, service etc)"
  value       = local.aiven
}

output "default_configuration" {
  description = "A map of default configuration options for any connector"
  value       = local.default_configuration
}
