variable "pm_api_url" {
  description = "Proxmox API URL"
  type        = string
}

variable "pm_api_token_id" {
  description = "Proxmox API Token ID"
  type        = string
  sensitive   = true
}

variable "pm_api_token_secret" {
  description = "Proxmox API Token Secret"
  type        = string
  sensitive   = true
}

variable "pm_tls_insecure" {
  description = "Proxmox TLS Insecure"
  type        = bool
  default     = true
}

variable "grafana_instance_id" {
  description = "Grafana instance ID."
  type = string
  sensitive = true
}

variable "grafana_api_token" {
  description = "Grafana API token."
  type      = string
  sensitive = true
}

variable "metrics_servers" {
  description = "Map of metrics servers."
  type = map(object({
    name                      = string
    type                      = string
    server                    = string
    port                      = number
    opentelemetry_path        = string
    opentelemetry_proto       = string
    opentelemetry_compression = string
  }))
}