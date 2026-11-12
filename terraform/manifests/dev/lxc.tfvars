lxc_instances = {
  "dns1" = {
    name         = "dv-dns1"
    description  = "Managed by Terraform.\n"
    tags         = "dev;dns"
    target_node  = "pve1"
    start        = true
    onboot       = true
    vmid         = 202
    hostname     = "dv-dns1"
    ostemplate   = "utils:vztmpl/rocky-10-20260913.tar.xz"
    password     = "StrongPassword123!"
    cores        = 1
    memory       = 512
    nameserver   = "1.1.1.1 8.8.8.8"
    searchdomain = "lab.pl"
    rootfs = {
      storage = "local-lvm"
      size    = "8G"
    }
    network = {
      name   = "eth0"
      bridge = "vmbr0"
      ip     = "10.0.2.2/24"
      gw     = "10.0.2.1"
      tag    = "2"
    }
    ssh_public_keys = <<-EOT
      ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIDYVcbIvFDJgRFjZmG7BPCDnVVK+CNU8BJtVHWmcwh0N lxc
    EOT
  }
  "dns2" = {
    name         = "dv-dns2"
    description  = "Managed by Terraform.\n"
    tags         = "dev;dns"
    target_node  = "pve2"
    start        = true
    onboot       = true
    vmid         = 203
    hostname     = "dv-dns2"
    ostemplate   = "utils:vztmpl/rocky-10-20260913.tar.xz"
    password     = "StrongPassword123!"
    cores        = 1
    memory       = 512
    nameserver   = "1.1.1.1 8.8.8.8"
    searchdomain = "lab.pl"
    rootfs = {
      storage = "local-lvm"
      size    = "8G"
    }
    network = {
      name   = "eth0"
      bridge = "vmbr0"
      ip     = "10.0.2.3/24"
      gw     = "10.0.2.1"
      tag    = "2"
    }
    ssh_public_keys = <<-EOT
      ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIDYVcbIvFDJgRFjZmG7BPCDnVVK+CNU8BJtVHWmcwh0N lxc
    EOT
  }
  "lb1" = {
    name         = "dv-lb1"
    description  = "Managed by Terraform.\n"
    tags         = "dev;lb"
    target_node  = "pve1"
    start        = true
    onboot       = true
    vmid         = 206
    hostname     = "dv-lb1"
    ostemplate   = "utils:vztmpl/rocky-10-20260913.tar.xz"
    password     = "StrongPassword123!"
    cores        = 1
    memory       = 512
    nameserver   = "10.0.2.4 10.0.2.5"
    searchdomain = "lab.pl"
    rootfs = {
      storage = "local-lvm"
      size    = "8G"
    }
    network = {
      name   = "eth0"
      bridge = "vmbr0"
      ip     = "10.0.2.6/24"
      gw     = "10.0.2.1"
      tag    = "2"
    }
    ssh_public_keys = <<-EOT
      ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIDYVcbIvFDJgRFjZmG7BPCDnVVK+CNU8BJtVHWmcwh0N lxc
    EOT
  }
  "lb2" = {
    name         = "dv-lb2"
    description  = "Managed by Terraform.\n"
    tags         = "dev;lb"
    target_node  = "pve2"
    start        = true
    onboot       = true
    vmid         = 207
    hostname     = "dv-lb2"
    ostemplate   = "utils:vztmpl/rocky-10-20260913.tar.xz"
    password     = "StrongPassword123!"
    cores        = 1
    memory       = 512
    nameserver   = "10.0.2.4 10.0.2.5"
    searchdomain = "lab.pl"
    rootfs = {
      storage = "local-lvm"
      size    = "8G"
    }
    network = {
      name   = "eth0"
      bridge = "vmbr0"
      ip     = "10.0.2.7/24"
      gw     = "10.0.2.1"
      tag    = "2"
    }
    ssh_public_keys = <<-EOT
      ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIDYVcbIvFDJgRFjZmG7BPCDnVVK+CNU8BJtVHWmcwh0N lxc
    EOT
  }
  "rp1" = {
    name         = "dv-rp1"
    description  = "Managed by Terraform.\n"
    tags         = "prod;rp"
    target_node  = "pve1"
    start        = true
    onboot       = true
    vmid         = 210
    hostname     = "dv-rp1"
    ostemplate   = "utils:vztmpl/rocky-10-20260913.tar.xz"
    password     = "StrongPassword123!"
    cores        = 1
    memory       = 512
    nameserver   = "10.0.2.4 10.0.2.5"
    searchdomain = "lab.pl"
    rootfs = {
      storage = "local-lvm"
      size    = "8G"
    }
    network = {
      name   = "eth0"
      bridge = "vmbr0"
      ip     = "10.0.2.10/24"
      gw     = "10.0.2.1"
      tag    = "2"
    }
    ssh_public_keys = <<-EOT
      ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIDYVcbIvFDJgRFjZmG7BPCDnVVK+CNU8BJtVHWmcwh0N lxc
    EOT
  }
  "rp2" = {
    name         = "dv-rp2"
    description  = "Managed by Terraform.\n"
    tags         = "prod;rp"
    target_node  = "pve2"
    start        = true
    onboot       = true
    vmid         = 211
    hostname     = "dv-rp2"
    ostemplate   = "utils:vztmpl/rocky-10-20260913.tar.xz"
    password     = "StrongPassword123!"
    cores        = 1
    memory       = 512
    nameserver   = "10.0.2.4 10.0.2.5"
    searchdomain = "lab.pl"
    rootfs = {
      storage = "local-lvm"
      size    = "8G"
    }
    network = {
      name   = "eth0"
      bridge = "vmbr0"
      ip     = "10.0.2.11/24"
      gw     = "10.0.2.1"
      tag    = "2"
    }
    ssh_public_keys = <<-EOT
      ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIDYVcbIvFDJgRFjZmG7BPCDnVVK+CNU8BJtVHWmcwh0N lxc
    EOT
  }
  "bastion1" = {
    name         = "dv-bastion1"
    description  = "Managed by Terraform.\n"
    tags         = "dev;bastion"
    target_node  = "pve1"
    start        = true
    onboot       = true
    vmid         = 302
    hostname     = "dv-bastion1"
    ostemplate   = "utils:vztmpl/rocky-10-20260913.tar.xz"
    password     = "StrongPassword123!"
    cores        = 1
    memory       = 512
    nameserver   = "10.0.2.4 10.0.2.5"
    searchdomain = "lab.pl"
    rootfs = {
      storage = "local-lvm"
      size    = "8G"
    }
    network = {
      name   = "eth0"
      bridge = "vmbr0"
      ip     = "10.0.3.2/24"
      gw     = "10.0.3.1"
      tag    = "3"
    }
    ssh_public_keys = <<-EOT
      ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIDYVcbIvFDJgRFjZmG7BPCDnVVK+CNU8BJtVHWmcwh0N lxc
    EOT
  }
  "bastion2" = {
    name         = "dv-bastion2"
    description  = "Managed by Terraform.\n"
    tags         = "dev;bastion"
    target_node  = "pve2"
    start        = true
    onboot       = true
    vmid         = 303
    hostname     = "dv-bastion2"
    ostemplate   = "utils:vztmpl/rocky-10-20260913.tar.xz"
    password     = "StrongPassword123!"
    cores        = 1
    memory       = 512
    nameserver   = "10.0.2.4 10.0.2.5"
    searchdomain = "lab.pl"
    rootfs = {
      storage = "local-lvm"
      size    = "8G"
    }
    network = {
      name   = "eth0"
      bridge = "vmbr0"
      ip     = "10.0.3.3/24"
      gw     = "10.0.3.1"
      tag    = "3"
    }
    ssh_public_keys = <<-EOT
      ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIDYVcbIvFDJgRFjZmG7BPCDnVVK+CNU8BJtVHWmcwh0N lxc
    EOT
  }
}