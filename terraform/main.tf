terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
    }
  }
}

resource "google_storage_bucket" "auto-expire" {
  name          = "no-public-access-bucket-xyz"
  location      = "US"
  force_destroy = true

  public_access_prevention = "enforced"
}
