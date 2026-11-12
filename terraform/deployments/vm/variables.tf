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

variable "vm_instances" {
  description = "List of VM instances"
  type = map(object({
    name                = string
    description         = string
    tags                = list(string)
    target_node         = string
    vmid                = number
    stop_on_destroy     = bool
    cores               = number
    cpu_sockets         = number
    cpu_type            = string
    memory              = number
    balloon             = number
    disk_datastore_id   = string
    disk_import_from    = string
    disk_interface      = string
    disk_size           = number
    network_bridge      = string
    ip_address          = string
    gateway             = string
    dns_domain          = string
    dns_servers         = list(string)
    username            = string
    password            = string
    ssh_key             = list(string)
    os_type             = string
    agent               = bool
    startup_order       = number
    startup_up_delay    = number
    reboot_after_update = bool
  }))
}