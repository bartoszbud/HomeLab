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

resource "proxmox_lxc" "lxc" {
  for_each = var.lxc_instances
  hostname    = "${var.lxc_instances[each.key].hostname}"
  target_node = "${var.lxc_instances[each.key].target_node}"
  vm_id       = "${var.lxc_instances[each.key].vm_id}"
  ostemplate  = "${var.lxc_instances[each.key].ostemplate}"
  cores       = "${var.lxc_instances[each.key].cores}"
  memory      = "${var.lxc_instances[each.key].memory}"
  nameservers = "${var.lxc_instances[each.key].nameservers}"
  lxc_ip      = "${var.lxc_instances[each.key].lxc_ip}"
  gw          = "${var.lxc_instances[each.key].gw}"
  password    = "${var.lxc_instances[each.key].password}"
}