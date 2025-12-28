resource "proxmox_lxc" "lxc" {
  for_each     = var.lxc_instances
  target_node  = var.lxc_instances[each.key].target_node
  start        = var.lxc_instances[each.key].start
  onboot       = var.lxc_instances[each.key].onboot
  description  = var.lxc_instances[each.key].description
  tags         = var.lxc_instances[each.key].tags
  vmid         = var.lxc_instances[each.key].vmid
  hostname     = var.lxc_instances[each.key].hostname
  ostemplate   = var.lxc_instances[each.key].ostemplate
  cores        = var.lxc_instances[each.key].cores
  memory       = var.lxc_instances[each.key].memory
  nameserver   = var.lxc_instances[each.key].nameserver
  searchdomain = var.lxc_instances[each.key].searchdomain
  password     = var.lxc_instances[each.key].password
  rootfs {
    storage = var.lxc_instances[each.key].rootfs.storage
    size    = var.lxc_instances[each.key].rootfs.size
  }
  network {
    name   = var.lxc_instances[each.key].network.name
    bridge = var.lxc_instances[each.key].network.bridge
    ip     = var.lxc_instances[each.key].network.ip
    gw     = var.lxc_instances[each.key].network.gw
  }
}