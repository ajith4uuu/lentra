variable "project_id" {
  description = "GCP Project ID"
  type        = string
  default     = "lent-shr-terraform-4109"
}

variable "region" {
  description = "GCP Region"
  type        = string
  default     = "asia-south1"
}

variable "zone" {
  description = "GCP Zone"
  type        = string
  default     = "asia-south1-b"
}

variable "vm_name" {
  description = "VM Name"
  type        = string
  default     = "cicd-test"
}
