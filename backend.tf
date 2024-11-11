terraform {
  backend "gcs" {
    bucket = var.backend
    prefix = "terraform/state"
  }
}