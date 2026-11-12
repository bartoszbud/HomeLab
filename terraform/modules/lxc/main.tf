resource "proxmox_lxc" "lxc" {
  for_each     = var.lxc_instances
  target_node  = each.value.target_node
  start        = each.value.start
  onboot       = each.value.onboot
  description  = each.value.description
  tags         = each.value.tags
  vmid         = each.value.vmid
  hostname     = each.value.hostname
  ostemplate   = each.value.ostemplate
  cores        = each.value.cores
  memory       = each.value.memory
  nameserver   = each.value.nameserver
  searchdomain = each.value.searchdomain
  password     = each.value.password
  rootfs {
    storage = each.value.rootfs.storage
    size    = each.value.rootfs.size
  }
  network {
    name   = each.value.network.name
    bridge = each.value.network.bridge
    ip     = each.value.network.ip
    gw     = each.value.network.gw
    tag    = each.value.network.tag
  }
  ssh_public_keys = each.value.ssh_public_keys
}