variable "environment" {
  description = "Environment"
  type        = string
}

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

variable "lxc_instances" {
  description = "Map of LXC instances to create"
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

variable "vm_instances" {
  description = "Map of VM instances to create"
  type = map(object({
    target_node        = string
    name               = string
    vmid               = number
    tags               = string
    agent              = number
    start_at_node_boot = bool
    order              = number
    clone              = string
    bios               = string
    full_clone         = bool
    cores              = number
    memory             = number
    vm_state           = string
    ipconfig0          = string
    nameserver         = string
    searchdomain       = string
    ciuser             = string
    cipassword         = string
    sshkeys            = string

    scsihw            = string
    disk_size         = string
    disk_storage      = string
    cloudinit_storage = string

    network = object({
      id     = number
      model  = string
      bridge = string
    })
  }))

}