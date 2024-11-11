terraform {
  backend "gcs" {
    bucket = "backend-web-app-desarrollo-323314"
    prefix = "terraform/state"
  }
}