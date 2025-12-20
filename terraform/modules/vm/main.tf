terraform {
  required_providers {
    proxmox = {
      source = "Telmate/proxmox"
      version = "3.0.2-rc06"
    }
  }
}

provider "proxmox" {
  pm_api_url      = var.proxmox_api_url
  pm_user         = var.proxmox_user
  pm_password     = var.proxmox_password
  pm_tls_insecure = var.proxmox_tls_insecure
}

resource "proxmox_vm_qemu" "vm" {
  for_each = var.vm_instances
  name         = "${var.vm_instances[each.key].name}"
  target_node  = "${var.vm_instances[each.key].target_node}"
  vmid         = "${var.vm_instances[each.key].vmid}"
  agent        = "${var.vm_instances[each.key].agent}"
  cores        = "${var.vm_instances[each.key].cores}"
  memory       = "${var.vm_instances[each.key].memory}"
  boot         = "${var.vm_instances[each.key].boot}"
  clone        = "${var.vm_instances[each.key].clone}"
  vm_state     = "${var.vm_instances[each.key].vm_state}"
  ipconfig0    = "${var.vm_instances[each.key].ipconfig0}"  
  nameserver   = "${var.vm_instances[each.key].nameserver}"
  searchdomain = "${var.vm_instances[each.key].searchdomain}"
  ciuser       = "${var.vm_instances[each.key].ciuser}"
  cipassword   = "${var.vm_instances[each.key].cipassword}"
  sshkeys      = "${var.vm_instances[each.key].sshkeys}"
}