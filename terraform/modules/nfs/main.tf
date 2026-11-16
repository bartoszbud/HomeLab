resource "proxmox_storage_nfs" "nfs" {
  id = var.id
  server = var.server
  export = var.export
  content = var.content
  nodes = var.nodes  
}