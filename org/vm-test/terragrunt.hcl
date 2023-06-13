terraform {
  source = "github.com/ajith4uuu/terraform-modules//modules/vm-instance"
}

include {
  path = find_in_parent_folders()
}

inputs = {
  project_id    = "lent-shr-terraform-4109"
  instance_name = "test-ajith"
  network       = "workstations"
}
