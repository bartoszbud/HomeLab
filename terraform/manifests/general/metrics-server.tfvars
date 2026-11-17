metrics_servers = {
  grafana_cloud = {
    name                      = "grafana-cloud-otel"
    type                      = "opentelemetry"
    server                    = "otlp-gateway-prod-eu-west-2.grafana.net"
    port                      = 443
    opentelemetry_proto       = "https"
    opentelemetry_path        = "/otlp/v1/metrics"
    opentelemetry_compression = "gzip"
  }
}