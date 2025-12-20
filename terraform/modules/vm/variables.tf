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

variable "vm_instances" {
  description = "Map of VM instances to create"
  type = map(object({
    name         = string
    target_node  = string
    vmid         = number
    agent        = number
    cores        = number
    memory       = number
    boot         = string
    clone        = string
    vm_state     = string
    ipconfig0    = string
    nameserver   = string
    searchdomain = string
    ciuser       = string
    cipassword   = string
    sshkeys      = string
  }))
}