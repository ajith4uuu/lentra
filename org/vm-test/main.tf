provider "google" {
  project = "lent-shr-terraform-4109"
  region  = "asia-south1"
}

terraform {
  backend "gcs" {
    bucket = "lent-shr-terraform-state"
    prefix = "bootstrap"
  }
}

resource "google_compute_network" "network" {
  name                    = "workstations"
  auto_create_subnetworks = false
}

resource "google_compute_subnetwork" "subnet" {
  name          = "workstations"
  region        = "asia-south1"
  network       = google_compute_network.network.self_link
  ip_cidr_range = "10.160.0.0/20"
}

resource "google_compute_instance" "vm" {
  name         = "cicd-test"
  machine_type = "n1-standard-1"
  zone         = "asia-south1-b"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }

  network_interface {
    network    = google_compute_network.network.name
    subnetwork = google_compute_subnetwork.subnet.name
    access_config {}
  }

  shielded_instance_config {
    enable_secure_boot          = true
    enable_vtpm                 = true
    enable_integrity_monitoring = true
  }
}
