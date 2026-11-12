vm_instances = {
  "master1" = {
    name                = "kube-m1"
    description         = "Managed by Terraform"
    tags                = ["kubernetes", "master"]
    target_node         = "pve1"
    vmid                = 400
    stop_on_destroy     = true
    cores               = 4
    cpu_sockets         = 1
    cpu_type            = "host"
    memory              = 4096
    balloon             = 2048
    disk_datastore_id   = "local-lvm"
    disk_import_from    = "utils:import/AlmaLinux-9-GenericCloud-latest.x86_64.qcow2"
    disk_interface      = "scsi0"
    disk_size           = 50
    network_bridge      = "vmbr0"
    ip_address          = "10.0.6.10/24"
    gateway             = "10.0.6.1"
    dns_domain          = "lab.pl"
    dns_servers         = ["10.0.2.4", "10.0.2.5"]
    username            = "admin"
    password            = "password"
    ssh_key             = ["ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIFS4IiwxJItoVnNYEK2qhNbJqF3o1mSG7/8trulew9Uo Admin"]
    os_type             = "l26"
    agent               = true
    startup_order       = 1
    startup_up_delay    = 10
    reboot_after_update = true
  }
}

/*vm_instances = {
  "master1" = {
    name         = "kube-m1"
    target_node  = "pve1"
    vmid         = 400
    agent        = 1
    memory       = 4096
    balloon      = 2048
    cores        = 4
    disk_size    = "50G"
    boot         = "order=scsi0"
    clone        = "alma9-cloudinit"
    vm_state     = "running"
    ipconfig0    = "ip=10.0.6.10/24,gw=10.0.6.1"
    nameserver   = "10.0.2.4,10.0.2.5"
    searchdomain = "lab.pl"
    ciuser       = "admin"
    cipassword   = "password"
    sshkeys      = <<EOF
                    ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIFS4IiwxJItoVnNYEK2qhNbJqF3o1mSG7/8trulew9Uo Admin
                   EOF
  }
}*/