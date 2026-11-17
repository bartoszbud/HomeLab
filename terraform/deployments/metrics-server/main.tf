module "metrics" {
  for_each = var.metrics_servers
  source   = "../../modules/metrics-server"

  grafana_instance_id = var.grafana_instance_id
  grafana_api_token   = var.grafana_api_token

  name   = each.value.name
  type   = each.value.type
  server = each.value.server
  port   = each.value.port

  opentelemetry_path        = each.value.opentelemetry_path
  opentelemetry_proto       = each.value.opentelemetry_proto
  opentelemetry_compression = each.value.opentelemetry_compression
}