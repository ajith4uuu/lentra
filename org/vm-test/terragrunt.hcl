include {
  path = find_in_parent_folders("org.hcl")
}

terraform {
  source = "github.com/ajith4uuu/terraform-modules//modules/vm-instance" # Replace with your Terraform modules repository URL
}

locals {
}

inputs = {
  project_id = local.project_id
  region     = var.region
  zone       = var.zone
  vm_name    = var.vm_name
}
