environment = "dev"

#pm_api_url          = "PVE_API_URL"
#pm_user             = "PVE_USER"
#pm_api_token_id     = "PVE_API_TOKEN_ID"
#pm_api_token_secret = "PVE_API_TOKEN_SECRET"
#pm_tls_insecure     = true

test_instances = {
  "test1" = {
    name         = "test1"
    description  = "tf-test-instance-1\n"
    tags         = "test"
    target_node  = "pve1"
    start        = true
    onboot       = true
    vmid         = 1002
    hostname     = "tf-test1"
    ostemplate   = "lxc-template:vztmpl/almalinux-9-default_20251221_amd64.tar.xz"
    password     = "StrongPassword123!"
    cores        = one
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
  "test2" = {
    name         = "test2"
    description  = "tf-test-instance-2\n"
    tags         = "test"
    target_node  = "pve2"
    start        = true
    onboot       = true
    vmid         = 1011
    hostname     = "tf-test2"
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

vmtest_instances = {
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
    cores              = 8
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