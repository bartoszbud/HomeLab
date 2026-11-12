lxc_instances = {
  "dns1" = {
    name         = "pr-dns1"
    description  = "Managed by Terraform.\n"
    tags         = "prod,dns"
    target_node  = "pve1"
    start        = true
    onboot       = true
    vmid         = 204
    hostname     = "pr-dns1"
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
      ip     = "10.0.2.4/24"
      gw     = "10.0.2.1"
      tag    = "2"
    }
    ssh_public_keys = <<-EOT
      ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIDYVcbIvFDJgRFjZmG7BPCDnVVK+CNU8BJtVHWmcwh0N lxc
    EOT
  }
  "dns2" = {
    name         = "pr-dns2"
    description  = "Managed by Terraform.\n"
    tags         = "prod,dns"
    target_node  = "pve2"
    start        = true
    onboot       = true
    vmid         = 205
    hostname     = "pr-dns2"
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
      ip     = "10.0.2.5/24"
      gw     = "10.0.2.1"
      tag    = "2"
    }
    ssh_public_keys = <<-EOT
      ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIDYVcbIvFDJgRFjZmG7BPCDnVVK+CNU8BJtVHWmcwh0N lxc
    EOT
  }
  "lb1" = {
    name         = "pr-lb1"
    description  = "Managed by Terraform.\n"
    tags         = "prod,lb"
    target_node  = "pve1"
    start        = true
    onboot       = true
    vmid         = 208
    hostname     = "pr-lb1"
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
      ip     = "10.0.2.8/24"
      gw     = "10.0.2.1"
      tag    = "2"
    }
    ssh_public_keys = <<-EOT
      ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIDYVcbIvFDJgRFjZmG7BPCDnVVK+CNU8BJtVHWmcwh0N lxc
    EOT
  }
  "lb2" = {
    name         = "pr-lb2"
    description  = "Managed by Terraform.\n"
    tags         = "prod,lb"
    target_node  = "pve2"
    start        = true
    onboot       = true
    vmid         = 209
    hostname     = "pr-lb2"
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
      ip     = "10.0.2.9/24"
      gw     = "10.0.2.1"
      tag    = "2"
    }
    ssh_public_keys = <<-EOT
      ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIDYVcbIvFDJgRFjZmG7BPCDnVVK+CNU8BJtVHWmcwh0N lxc
    EOT
  }
  "rp1" = {
    name         = "pr-rp1"
    description  = "Managed by Terraform.\n"
    tags         = "prod,rp"
    target_node  = "pve1"
    start        = true
    onboot       = true
    vmid         = 212
    hostname     = "pr-rp1"
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
      ip     = "10.0.2.12/24"
      gw     = "10.0.2.1"
      tag    = "2"
    }
    ssh_public_keys = <<-EOT
      ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIDYVcbIvFDJgRFjZmG7BPCDnVVK+CNU8BJtVHWmcwh0N lxc
    EOT
  }
  "rp2" = {
    name         = "pr-rp2"
    description  = "Managed by Terraform.\n"
    tags         = "prod,rp"
    target_node  = "pve2"
    start        = true
    onboot       = true
    vmid         = 213
    hostname     = "pr-rp2"
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
      ip     = "10.0.2.13/24"
      gw     = "10.0.2.1"
      tag    = "2"
    }
    ssh_public_keys = <<-EOT
      ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIDYVcbIvFDJgRFjZmG7BPCDnVVK+CNU8BJtVHWmcwh0N lxc
    EOT
  }
  "bastion1" = {
    name         = "pr-bastion1"
    description  = "Managed by Terraform.\n"
    tags         = "prod,bastion"
    target_node  = "pve1"
    start        = true
    onboot       = true
    vmid         = 304
    hostname     = "pr-bastion1"
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
      ip     = "10.0.3.4/24"
      gw     = "10.0.3.1"
      tag    = "3"
    }
    ssh_public_keys = <<-EOT
      ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIDYVcbIvFDJgRFjZmG7BPCDnVVK+CNU8BJtVHWmcwh0N lxc
    EOT
  }
  "bastion2" = {
    name         = "pr-bastion2"
    description  = "Managed by Terraform.\n"
    tags         = "dev,bastion"
    target_node  = "pve2"
    start        = true
    onboot       = true
    vmid         = 305
    hostname     = "pr-bastion2"
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
      ip     = "10.0.3.5/24"
      gw     = "10.0.3.1"
      tag    = "3"
    }
    ssh_public_keys = <<-EOT
      ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIDYVcbIvFDJgRFjZmG7BPCDnVVK+CNU8BJtVHWmcwh0N lxc
    EOT
  }
}