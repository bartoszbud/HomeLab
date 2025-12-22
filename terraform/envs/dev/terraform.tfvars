pm_api_url          = ""
pm_user             = ""
pm_api_token_id     = ""
pm_api_token_secret = ""
pm_tls_insecure     = true

test_instances = {
  "test1" = {
    name         = "test1"
    description  = "Test instance 1"
    tags         = "test"
    target_node  = "pve1"
    start        = true
    onboot       = true
    vmid         = 1001
    hostname     = "tf-test1"
    ostemplate   = "local:vztmpl/almalinux-9-default_20251221_amd64.tar.xz"
    password     = "StrongPassword123!"
    cores        = 1
    memory       = 512
    nameserver   = "1.1.1.1, 8.8.8.8"
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
    description  = "Test instance 2"
    tags         = "test"
    target_node  = "pve2"
    start        = true
    onboot       = true
    vmid         = 1011
    hostname     = "tf-test2"
    ostemplate   = "local:vztmpl/almalinux-9-default_20251221_amd64.tar.xz"
    password     = "StrongPassword123!"
    cores        = 1
    memory       = 512
    nameserver   = "1.1.1.1, 8.8.8.8"
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
