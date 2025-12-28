resource "proxmox_vm_qemu" "vm" {
  lifecycle {
    ignore_changes = [default_ipv4_address, ssh_host, ssh_port]
  }
  for_each           = var.vm_instances
  target_node        = var.vm_instances[each.key].target_node
  name               = var.vm_instances[each.key].name
  vmid               = var.vm_instances[each.key].vmid
  tags               = var.vm_instances[each.key].tags
  agent              = var.vm_instances[each.key].agent
  start_at_node_boot = var.vm_instances[each.key].start_at_node_boot
  startup_shutdown {
    order = var.vm_instances[each.key].order
  }
  clone      = var.vm_instances[each.key].clone
  bios       = var.vm_instances[each.key].bios
  full_clone = var.vm_instances[each.key].full_clone
  cpu {
    cores = var.vm_instances[each.key].cores
  }
  memory       = var.vm_instances[each.key].memory
  vm_state     = var.vm_instances[each.key].vm_state
  ipconfig0    = var.vm_instances[each.key].ipconfig0
  nameserver   = var.vm_instances[each.key].nameserver
  searchdomain = var.vm_instances[each.key].searchdomain
  ciuser       = var.vm_instances[each.key].ciuser
  cipassword   = var.vm_instances[each.key].cipassword
  sshkeys      = var.vm_instances[each.key].sshkeys

  scsihw = var.vm_instances[each.key].scsihw

  disks {
    scsi {
      scsi0 {
        disk {
          size    = var.vm_instances[each.key].disk_size
          storage = var.vm_instances[each.key].disk_storage
        }
      }
    }
    ide {
      ide2 {
        cloudinit {
          storage = var.vm_instances[each.key].cloudinit_storage
        }
      }
    }
  }

  network {
    id     = var.vm_instances[each.key].network.id
    model  = var.vm_instances[each.key].network.model
    bridge = var.vm_instances[each.key].network.bridge
  }
}