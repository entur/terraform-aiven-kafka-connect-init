variable "access_token" {
  description = "Aiven API access token"
  type        = string
}

variable "project_name" {
  description = "Aiven project name"
  type        = string
}

variable "kafka_service_name" {
  description = "Aiven service name where Kafka Cluster is running"
  type        = string
}

variable "tasks_max" {
  type        = number
  description = "Maximum number of tasks that should be created for this connector. The connector may create fewer tasks if it cannot achieve this level of parallelism"
  default     = 1
}

variable "key_converter" {
  type        = string
  description = "Converter class for key Connect data. This controls the format of the data that will be written to Kafka for source connectors or read from Kafka for sink connectors"
  default     = "org.apache.kafka.connect.storage.StringConverter"
}

variable "value_converter" {
  type        = string
  description = "Converter class for value Connect data. This controls the format of the data that will be written to Kafka for source connectors or read from Kafka for sink connectors"
  default     = "io.confluent.connect.avro.AvroConverter"
}
