terraform {
  backend "gcs" {
    bucket = "lentra-shr-terraform-state"
    prefix = "bootstrap"
  }
}
