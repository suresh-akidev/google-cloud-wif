terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
    }
  }
}

resource "google_storage_bucket" "auto-expire" {
  project       = "sodium-atrium-308005"
  name          = "no-public-access-bucket-xyz"
  location      = "US"
  force_destroy = true

  public_access_prevention = "enforced"
}
