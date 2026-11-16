module "nfs" {
  for_each = var.nfs_servers
  source = "../../modules/nfs"
  id = each.value.id
  server = each.value.server
  export = each.value.export
  content = each.value.content
  nodes = each.value.nodes
}