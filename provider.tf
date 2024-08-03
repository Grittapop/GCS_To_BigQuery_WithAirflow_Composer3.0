terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "5.39.1"
    }
  }
}

provider "google" {
  project = "kafka-430006"
  region  = "asia-southeast1"
  zone    = "asia-southeast1-a"
  credentials = file("kafka-430006-a7e5df81a9d7.json")
}