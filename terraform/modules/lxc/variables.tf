variable "proxmox_api_url" {
  description = "Proxmox API URL"
  type        = string  
}

variable "proxmox_user" {
  description = "Proxmox User"
  type        = string  
}

variable "proxmox_password" {
  description = "Proxmox Password"
  type        = string  
  sensitive   = true
}

variable "proxmox_tls_insecure" {
  description = "Proxmox TLS Insecure"
  type        = bool
  default     = true
}

variable "lxc_instances" {
  description = "Map of LXC instances to create"
  type = map(object({
    target_node = string
    vm_id       = number
    hostname    = string
    ostemplate  = string
    password    = string
    cores       = number
    memory      = number
    nameservers = string
    lxc_ip      = string
    gw          = string
  }))
}
