# terragrunt.hcl

terraform {
  source = "github.com/terraform-google-modules/terraform-google-vm/examples/compute_instance/simple"
}

inputs = {
  project_id     = "lent-shr-terraform-4109"
  region         = "asia-south1"
  zone           = "asia-south1-b"
  instance_name  = "cicd-test"
  machine_type   = "n1-standard-2"
  boot_disk_size = 10
  image_family   = "debian-10"
  image_project  = "debian-cloud"
  network_tags   = ["web-server"]
}
