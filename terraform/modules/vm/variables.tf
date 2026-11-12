#tflint-ignore: terraform_unused_declarations
/*variable "pm_api_url" {
  description = "Proxmox API URL"
  type        = string
}

#tflint-ignore: terraform_unused_declarations
variable "pm_user" {
  description = "Proxmox User"
  type        = string
}

#tflint-ignore: terraform_unused_declarations
variable "pm_api_token_id" {
  description = "Proxmox API Token ID"
  type        = string
  sensitive   = true
}

#tflint-ignore: terraform_unused_declarations
variable "pm_api_token_secret" {
  description = "Proxmox API Token Secret"
  type        = string
  sensitive   = true
}

#tflint-ignore: terraform_unused_declarations
variable "pm_tls_insecure" {
  description = "Proxmox TLS Insecure"
  type        = bool
  default     = true
}*/

variable "name" {
  description = "Name of the VM"
  type        = string
}

variable "description" {
  description = "Description of the VM"
  type        = string
  default     = ""
}

variable "tags" {
  description = "Tags for the VM"
  type        = list(string)
  default     = []
}

variable "node_name" {
  description = "Target node for the VM"
  type        = string
}

variable "vm_id" {
  description = "VM ID"
  type        = number
}

variable "stop_on_destroy" {
  description = "Whether to stop the VM on destroy"
  type        = bool
  default     = true
}

variable "cpu_cores" {
  description = "Number of CPU cores"
  type        = number
}

variable "cpu_sockets" {
  description = "Number of CPU sockets"
  type        = number
}

variable "cpu_type" {
  description = "CPU type"
  type        = string
  default     = "host"
}

variable "memory_dedicated" {
  description = "Dedicated memory size in MB"
  type        = number
}

variable "memory_floating" {
  description = "Floating memory size in MB"
  type        = number
}

variable "disk_datastore_id" {
  description = "Datastore ID for the disk"
  type        = string
}

variable "disk_import_from" {
  description = "Source for disk import"
  type        = string
  default     = ""
}

variable "disk_interface" {
  description = "Disk interface type"
  type        = string
  default     = "virtio"
}

variable "disk_size" {
  description = "Disk size in GB"
  type        = string
}

variable "network_bridge" {
  description = "Network bridge for the VM"
  type        = string
}

variable "ip_address" {
  description = "IP address for the VM"
  type        = string
  default     = ""
}

variable "gateway" {
  description = "Gateway IP address for the VM"
  type        = string
  default     = ""
}

variable "dns_domain" {
  description = "DNS domain for the VM"
  type        = string
  default     = ""
}

variable "dns_servers" {
  description = "DNS servers for the VM"
  type        = list(string)
  default     = []
}

variable "username" {
  description = "Username for the VM"
  type        = string
  default     = "admin"
}

variable "password" {
  description = "Password for the VM"
  type        = string
  sensitive   = true
}

variable "ssh_key" {
  description = "SSH key for the VM"
  type        = list(string)
  sensitive   = true
}

variable "startup_order" {
  description = "Startup order for the VM"
  type        = number
  default     = 1
}

variable "startup_up_delay" {
  description = "Startup up delay in seconds"
  type        = number
  default     = 0
}

variable "agent_enabled" {
  description = "Whether the QEMU agent is enabled"
  type        = bool
  default     = true
}

variable "reboot_after_update" {
  description = "Whether to reboot the VM after an update"
  type        = bool
  default     = false
}

variable "os_type" {
  description = "Operating system type"
  type        = string
  default     = "cloud-init"
}

/*variable "vm_instances" {
  description = "Map of VM instances to create"
  type = map(object({
    name         = string
    target_node  = string
    vmid         = number
    onboot       = optional(bool, true)
    agent        = number
    memory       = number
    balloon      = number
    cores        = number
    cpu_type     = optional(string, "host")
    os_type      = optional(string, "cloud-init")
    disk_size    = string
    storage      = optional(string, "local-lvm")
    boot         = string
    clone        = string
    scsihw       = optional(string, "virtio-scsi-pci")
    full_clone   = optional(bool, true)
    vm_state     = string
    ipconfig0    = string
    nameserver   = string
    searchdomain = string
    ciuser       = string
    cipassword   = string
    sshkeys      = string
  }))
}*/