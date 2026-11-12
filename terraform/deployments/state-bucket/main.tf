module "state" {
  source = "../../modules/s3"

  environment = var.environment
  module_name = var.module_name
}
