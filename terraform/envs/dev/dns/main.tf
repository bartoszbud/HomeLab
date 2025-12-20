module "dns" {
  source = "../../../modules/lxc"
  lxc_instances = var.dns_instances
}