module "bucket" {
  source = "git@github.com:lgd-jenkins-devops/terraform-modules.git//bucket?ref=v1.0.0"
  name = var.bucket.name
  location = var.bucket.location
  project_id = var.project_id
}