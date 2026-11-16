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

variable "nfs_servers" {
  description = "Map of NFS servers."
  type = map(object({
    id = string
    server = string
    export = string
    content = list(string)
    nodes = list(string)
  }))
}