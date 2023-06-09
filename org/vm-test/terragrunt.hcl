terraform {
  source = "github.com/terraform-google-modules/terraform-google-vm/examples/compute_instance/simple"
}

inputs = {
  project_id     = "lent-shr-terraform-4109"
  region         = "asia-south1"
  zone           = "asia-south1-b"
  instance_name  = "my-instance"
  machine_type   = "n1-standard-2"
  boot_disk_size = 10
  image_family   = "debian-10"
  image_project  = "debian-cloud"
  network_tags   = ["web-server"]
  num_instances  = 1
  network        = "workstations"
  subnetwork     = "workstations"
  network_interface = {
    "0" = {
      subnetwork_project = "lent-shr-terraform-4109"
    }
  }
}
