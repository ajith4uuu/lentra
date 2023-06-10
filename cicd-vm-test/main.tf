provider "google" {
  project     = "lent-shr-terraform-4109"
  region      = "asia-south1"
  zone        = "asia-south1-b"
}

resource "google_compute_instance" "vm_instance" {
  name         = "cicd-test"
  machine_type = "n1-standard-1"
  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-10"
    }
  }
  network_interface {
    network = "default"
  }
}
