terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "5.39.1"
    }
  }
}

provider "google" {
  project = "workshop-430006"
  region  = "asia-southeast1"
  zone    = "asia-southeast1-a"
  credentials = file("workshop-430006-a7e5df81a9d7.json")
}