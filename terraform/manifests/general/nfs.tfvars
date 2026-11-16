nfs_servers = {
  backup = {
    id = "backup"
    server = "10.0.1.98"
    export = "/backup"
    content = ["backup"]
    nodes = ["pve0", "pve1", "pve2"]
  }
  utils = {
    id = "utils"
    server = "10.0.1.98"
    export = "/utils"
    content = ["import", "iso", "vztmpl"]
    nodes = ["pve0", "pve1", "pve2"]
  }
}