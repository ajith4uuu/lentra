include {
  path = find_in_parent_folders("org.hcl")
}

terraform {
  source = "github.com/ajith4uuu/lentra//cicd-vm-test" # Replace with your Terraform modules repository URL
}

locals {
  # project_id = terraform.workspace == "default" ? var.project_id : "${var.project_id}-${terraform.workspace}"
}

inputs = {
  project_id = local.project_id
  region     = var.region
  zone       = var.zone
  vm_name    = var.vm_name
}
