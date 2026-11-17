terraform {
  required_version = ">=1.14"
  required_providers {
    proxmox = {
      source  = "bpg/proxmox"
      version = "0.121.0"
    }
  }
  backend "s3" {}
}

provider "proxmox" {
  endpoint  = var.pm_api_url
  api_token = "${var.pm_api_token_id}=${var.pm_api_token_secret}"
  insecure  = var.pm_tls_insecure
}