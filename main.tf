#
# Use the Google Cloud Platform Provider
#
provider "google" {
  project       = var.project
  region        = var.region
  zone          = var.zone
}

#
# Let's create a bucket using Terraform
#
resource "google_storage_bucket" "first-bucket" {
  name          = "hörby-bucket1"                   # Name of the bucket
  location      = "EU"                              # Location of the bucket
  force_destroy = true                              # If bucket is destroyed, destroy all containing objects also
  uniform_bucket_level_access = true                # Set uniform bucket level access
}

