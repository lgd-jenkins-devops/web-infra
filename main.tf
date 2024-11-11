module "bucket" {
  source = "git@github.com:lgd-jenkins-devops/terraform-modules.git//bucket?ref=v1.0.0"
  name = var.bucket.name
  location = var.bucket.location
  project_id = var.project_id
}

module "bucket-load-balance" {
  source = "git@github.com:lgd-jenkins-devops/terraform-modules.git//load_balancer?ref=v1.0.0"
  depends_on = [module.bucket]
  type = "http-bucket"
  bucket_name = module.bucket.bucket_name
  path_cert = var.ssl.path_cert
  path_key = var.ssl.path_key
}