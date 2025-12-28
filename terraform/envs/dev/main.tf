module "test" {
  source              = "../../modules/lxc"
  pm_api_url          = var.pm_api_url
  pm_user             = var.pm_user
  pm_api_token_id     = var.pm_api_token_id
  pm_api_token_secret = var.pm_api_token_secret
  pm_tls_insecure     = var.pm_tls_insecure
  lxc_instances       = var.test_instances
}

module "vmtest" {
  source              = "../../modules/vm"
  pm_api_url          = var.pm_api_url
  pm_user             = var.pm_user
  pm_api_token_id     = var.pm_api_token_id
  pm_api_token_secret = var.pm_api_token_id
  pm_tls_insecure     = var.pm_tls_insecure
  vm_instances        = var.vmtest_instances
}