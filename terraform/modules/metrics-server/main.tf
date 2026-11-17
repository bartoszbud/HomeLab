locals {
  opentelemetry_headers = base64encode(jsonencode({
    Authorization = "Basic ${base64encode("${var.grafana_instance_id}:${var.grafana_api_token}")}"
  }))
}

resource "proxmox_metrics_server" "metrics_server" {
  name   = var.name
  type   = var.type
  server = var.server
  port   = var.port

  opentelemetry_path        = var.type == "opentelemetry" ? var.opentelemetry_path : null
  opentelemetry_proto       = var.type == "opentelemetry" ? var.opentelemetry_proto : null
  opentelemetry_headers     = var.type == "opentelemetry" ? local.opentelemetry_headers : null
  opentelemetry_compression = var.type == "opentelemetry" ? var.opentelemetry_compression : null
}