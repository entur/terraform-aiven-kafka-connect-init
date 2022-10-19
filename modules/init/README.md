# Usage

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >=0.13.2 |
| <a name="requirement_aiven"></a> [aiven](#requirement\_aiven) | >= 3.0.0, < 4.0.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aiven"></a> [aiven](#provider\_aiven) | >= 3.0.0, < 4.0.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aiven_kafka_user.kafka_admin](https://registry.terraform.io/providers/aiven/aiven/latest/docs/data-sources/kafka_user) | data source |
| [aiven_project.entur-aiven-project](https://registry.terraform.io/providers/aiven/aiven/latest/docs/data-sources/project) | data source |
| [aiven_service_component.schema-registry](https://registry.terraform.io/providers/aiven/aiven/latest/docs/data-sources/service_component) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_access_token"></a> [access\_token](#input\_access\_token) | Aiven API access token | `string` | n/a | yes |
| <a name="input_connector_name"></a> [connector\_name](#input\_connector\_name) | Unique name for this connector | `string` | n/a | yes |
| <a name="input_key_converter"></a> [key\_converter](#input\_key\_converter) | Converter class for key Connect data. This controls the format of the data that will be written to Kafka for source connectors or read from Kafka for sink connectors | `string` | `"org.apache.kafka.connect.storage.StringConverter"` | no |
| <a name="input_project_name"></a> [project\_name](#input\_project\_name) | Aiven project name | `string` | n/a | yes |
| <a name="input_service_name"></a> [service\_name](#input\_service\_name) | Aiven service name where KafkaConnect service is running | `string` | n/a | yes |
| <a name="input_service_registry_username"></a> [service\_registry\_username](#input\_service\_registry\_username) | Aiven service registry username to connect to Kafka schema registry | `string` | `"avnadmin"` | no |
| <a name="input_tasks_max"></a> [tasks\_max](#input\_tasks\_max) | Maximum number of tasks that should be created for this connector. The connector may create fewer tasks if it cannot achieve this level of parallelism | `number` | `1` | no |
| <a name="input_value_converter"></a> [value\_converter](#input\_value\_converter) | Converter class for value Connect data. This controls the format of the data that will be written to Kafka for source connectors or read from Kafka for sink connectors | `string` | `"io.confluent.connect.avro.AvroConverter"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_access_token"></a> [access\_token](#output\_access\_token) | Aiven API access token |
| <a name="output_connector"></a> [connector](#output\_connector) | Description of connector resources(name, project, service etc) |
| <a name="output_default_configuration"></a> [default\_configuration](#output\_default\_configuration) | A map of default configuration options for any connector |
| <a name="output_schema_registry"></a> [schema\_registry](#output\_schema\_registry) | Details of Kafka schema registry component of Aiven Kafka service |
<!-- END_TF_DOCS -->
