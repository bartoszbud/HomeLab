resource "proxmox_virtual_environment_vm" "vm" {
  name            = var.name
  description     = var.description
  tags            = var.tags
  node_name       = var.node_name
  vm_id           = var.vm_id
  stop_on_destroy = var.stop_on_destroy

  cpu {
    cores   = var.cpu_cores
    sockets = var.cpu_sockets
    type    = var.cpu_type
  }

  memory {
    dedicated = var.memory_dedicated
    floating  = var.memory_floating
  }

  disk {
    datastore_id = var.disk_datastore_id
    import_from  = var.disk_import_from
    interface    = var.disk_interface
    size         = var.disk_size
  }

  network_device {
    bridge = var.network_bridge
  }

  initialization {
    ip_config {
      ipv4 {
        address = var.ip_address
        gateway = var.gateway
      }
    }
    dns {
      domain  = var.dns_domain
      servers = var.dns_servers
    }
    user_account {
      username = var.username
      password = var.password
      keys     = var.ssh_key
    }
  }

  operating_system {
    type = var.os_type
  }

  agent {
    enabled = var.agent_enabled
  }

  startup {
    order    = var.startup_order
    up_delay = var.startup_up_delay
  }

  reboot_after_update = var.reboot_after_update
}

# resource for telmate provider
/*resource "proxmox_vm_qemu" "vm" {
  for_each           = var.vm_instances
  name               = each.value.name
  target_node        = each.value.target_node
  vmid               = each.value.vmid
  start_at_node_boot = each.value.onboot
  //startup    = each.value.startup
  //vm_state   = each.value.vm_state
  clone        = each.value.clone
  scsihw       = each.value.scsihw
  full_clone   = each.value.full_clone
  memory       = each.value.memory
  balloon      = each.value.balloon
  //cores        = each.value.cores
  //cpu_type     = each.value.cpu_type
  os_type      = each.value.os_type
  nameserver   = each.value.nameserver
  ipconfig0    = each.value.ipconfig0
  searchdomain = each.value.searchdomain
  ciuser       = each.value.ciuser
  cipassword   = each.value.cipassword
  sshkeys      = each.value.sshkeys

  disks {
    scsi {
      scsi0 {
        disk {
          size    = each.value.disk_size
          storage = each.value.storage
        }
      }
    }
    ide {
      ide2 {
        cloudinit {
          storage = each.value.storage
        }
      }
    }
  }

  network {
    id     = 0
    model  = "virtio"
    bridge = "vmbr0"
  }
}*/