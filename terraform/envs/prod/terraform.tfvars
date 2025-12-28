environment = "prod"

pm_api_url          = "https://10.0.0.2:8006/api2/json"
pm_user             = "terraform@pam"
pm_api_token_id     = "terraform@pam!terraform"
pm_api_token_secret = "df389016-2954-4d0b-8cd7-8fdc3331aa8d"
pm_tls_insecure     = true

lxc_instances = {
  "dns1" = {
    name         = "p-dns1"
    description  = "DNS-1\n"
    tags         = "tf,dc"
    target_node  = "pve1"
    start        = true
    onboot       = true
    vmid         = 100
    hostname     = "p-dns1"
    ostemplate   = "lxc-template:vztmpl/almalinux-9-default_20251221_amd64.tar.xz"
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
      ip     = "10.0.0.144/24"
      gw     = "10.0.0.1"
    }
  }
  "dns2" = {
    name         = "p-dns2"
    description  = "DNS-2\n"
    tags         = "tf,dc"
    target_node  = "pve2"
    start        = true
    onboot       = true
    vmid         = 101
    hostname     = "p-dns2"
    ostemplate   = "lxc-template:vztmpl/almalinux-9-default_20251221_amd64.tar.xz"
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
      ip     = "10.0.0.145/24"
      gw     = "10.0.0.1"
    }
  }
  "lb1" = {
    name         = "p-lb1"
    description  = "Load Balancer 1\n"
    tags         = "tf,dc"
    target_node  = "pve2"
    start        = true
    onboot       = true
    vmid         = 102
    hostname     = "p-lb1"
    ostemplate   = "lxc-template:vztmpl/almalinux-9-default_20251221_amd64.tar.xz"
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
      ip     = "10.0.0.145/24"
      gw     = "10.0.0.1"
    }
  }
  "lb2" = {
    name         = "p-lb2"
    description  = "Load Balancer 2\n"
    tags         = "tf,dc"
    target_node  = "pve2"
    start        = true
    onboot       = true
    vmid         = 103
    hostname     = "p-lb2"
    ostemplate   = "lxc-template:vztmpl/almalinux-9-default_20251221_amd64.tar.xz"
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
      ip     = "10.0.0.145/24"
      gw     = "10.0.0.1"
    }
  }
  "rp1" = {
    name         = "p-rp1"
    description  = "Reverse Proxy 1\n"
    tags         = "tf,dc"
    target_node  = "pve2"
    start        = true
    onboot       = true
    vmid         = 104
    hostname     = "p-rp1"
    ostemplate   = "lxc-template:vztmpl/almalinux-9-default_20251221_amd64.tar.xz"
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
      ip     = "10.0.0.145/24"
      gw     = "10.0.0.1"
    }
  }
  "rp2" = {
    name         = "p-rp2"
    description  = "Reverse Proxy 2\n"
    tags         = "tf,dc"
    target_node  = "pve2"
    start        = true
    onboot       = true
    vmid         = 105
    hostname     = "p-rp2"
    ostemplate   = "lxc-template:vztmpl/almalinux-9-default_20251221_amd64.tar.xz"
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
      ip     = "10.0.0.145/24"
      gw     = "10.0.0.1"
    }
  }
}

vm_instances = {
  "vmtest1" = {
    target_node        = "pve1"
    name               = "vmtest1"
    vmid               = 2001
    tags               = "ci"
    agent              = 0
    start_at_node_boot = true
    order              = 1
    clone              = "alma10-ci-202512252145"
    bios               = "seabios"
    full_clone         = true
    cores              = 2
    memory             = 2048
    vm_state           = "started"
    ipconfig0          = "ip=10.0.0.197/24,gw=10.0.0.1"
    nameserver         = "10.0.0.4,10.0.0.5"
    searchdomain       = "lab.pl"
    ciuser             = "admin"
    cipassword         = "Homelab!23"
    sshkeys            = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIGOpQpfy14x9jFtjncZhQE4elG6sv2ytV3ps2Bh+p8i4"

    scsihw            = "virtio-scsi-pci"
    disk_size         = "32G"
    disk_storage      = "local-lvm"
    cloudinit_storage = "local-lvm"

    network = {
      id     = 0
      model  = "virtio"
      bridge = "vmbr0"
    }
  }
  "vmtest2" = {
    target_node        = "pve2"
    name               = "vmtest2"
    vmid               = 2002
    tags               = "ci"
    agent              = 0
    start_at_node_boot = true
    order              = 1
    clone              = "alma10-ci-202512252145"
    bios               = "seabios"
    full_clone         = true
    cores              = 2
    memory             = 2048
    vm_state           = "started"
    ipconfig0          = "ip=10.0.0.198/24,gw=10.0.0.1"
    nameserver         = "10.0.0.4,10.0.0.5"
    searchdomain       = "lab.pl"
    ciuser             = "admin"
    cipassword         = "Homelab!23"
    sshkeys            = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIGOpQpfy14x9jFtjncZhQE4elG6sv2ytV3ps2Bh+p8i4"

    scsihw            = "virtio-scsi-pci"
    disk_size         = "32G"
    disk_storage      = "local-lvm"
    cloudinit_storage = "local-lvm"

    network = {
      id     = 0
      model  = "virtio"
      bridge = "vmbr0"
    }
  }
}