# terragrunt.hcl

terraform {
  source = "github.com/terraform-google-modules/terraform-google-vm/examples/compute_instance/simple"
}

inputs = {
  project_id     = "lentra-shr-terraform-0b00"
  region         = "asia-south1"
  zone           = "asia-south1-b"
  instance_name  = "my-instance"
  machine_type   = "n1-standard-2"
  boot_disk_size = 10
  image_family   = "debian-10"
  image_project  = "debian-cloud"
  network_tags   = ["web-server"]
}
