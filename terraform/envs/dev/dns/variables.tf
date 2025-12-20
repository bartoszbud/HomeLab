variable "dns_instances" {
  description = "Map of DNS instances to create"
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