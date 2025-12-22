variable "pm_api_url" {
  description = "Proxmox API URL"
  type        = string
}

variable "pm_user" {
  description = "Proxmox User"
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

variable "test_instances" {
  description = "Map of DNS instances to create"
  type = map(object({
    target_node  = string
    start        = bool
    onboot       = bool
    description  = string
    tags         = string
    vmid         = number
    hostname     = string
    ostemplate   = string
    password     = string
    cores        = number
    memory       = number
    nameserver   = string
    searchdomain = string
    rootfs = object({
      storage = string
      size    = string
    })
    network = object({
      name   = string
      bridge = string
      ip     = string
      gw     = string
    })
  }))
}

/*variable "rev_proxy_instances" {
  description = "Map of reverse proxy instances to create"
  type = map(object({
    target_node = string
    vmid        = number
    hostname    = string
    ostemplate  = string
    password    = string
    cores       = number
    memory      = number
    boot        = string
    nameserver  = string
    network = object({
      name = string
      ip   = string
      gw   = string
    })
  }))
}*/