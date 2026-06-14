//environment = "prod"

lxc_instances = {
  "dns1" = {
    name         = "pr-dns1"
    description  = "tf-dns-1\n"
    tags         = "prod,dns"
    target_node  = "pve1"
    start        = true
    onboot       = true
    vmid         = 104
    hostname     = "pr-dns1"
    ostemplate   = "local:vztmpl/rocky-10-20260530.tar.xz"
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
      ip     = "10.0.1.4/24"
      gw     = "10.0.1.1"
    }
    ssh_public_keys = <<-EOT
      ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIGOpQpfy14x9jFtjncZhQE4elG6sv2ytV3ps2Bh+p8i4
    EOT
  }
  "dns2" = {
    name         = "pr-dns2"
    description  = "tf-dns-2\n"
    tags         = "prod,dns"
    target_node  = "pve2"
    start        = true
    onboot       = true
    vmid         = 105
    hostname     = "pr-dns2"
    ostemplate   = "local:vztmpl/rocky-10-20260530.tar.xz"
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
      ip     = "10.0.1.5/24"
      gw     = "10.0.1.1"
    }
    ssh_public_keys = <<-EOT
      ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIGOpQpfy14x9jFtjncZhQE4elG6sv2ytV3ps2Bh+p8i4
    EOT
  }
}