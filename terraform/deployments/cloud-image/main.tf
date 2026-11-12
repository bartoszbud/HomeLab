module "cloud_image" {
  for_each     = var.cloud_image
  source       = "../../modules/cloud-image"
  content_type = each.value.content_type
  datastore_id = each.value.datastore_id
  node_name    = each.value.node_name
  url          = each.value.url
  file_name    = each.value.file_name
}
