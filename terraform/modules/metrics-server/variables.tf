variable "name" {
  description = "Metrics server name."
  type        = string
}

variable "type" {
  description = "Metrics server type."
  type        = string
}

variable "server" {
  description = "Metrics server address. IP or FQDN."
  type        = string
}

variable "port" {
  description = "Metrics server port."
  type        = number
}

variable "opentelemetry_path" {
  description = "Open Telemetry collector path."
  type        = string
  default     = null
}

variable "opentelemetry_proto" {
  description = "Open Telemetry collector protocol."
  type        = string
  default     = null
}

variable "opentelemetry_compression" {
  description = "Open Telemetry collector compression type."
  type        = string
}

variable "grafana_instance_id" {
  type = string
}

variable "grafana_api_token" {
  type      = string
  sensitive = true
}