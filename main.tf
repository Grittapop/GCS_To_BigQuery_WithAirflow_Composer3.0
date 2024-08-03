resource "google_bigquery_dataset" "dataset" {
  dataset_id                  = "workshop"
  location                    = "asia-southeast1"
  default_table_expiration_ms = 3600000

  labels = {
    env = "default"
  }
}


resource "google_composer_environment" "composer" {
  name   = "composer3"
  region = "asia-southeast1"
  config {
    software_config {
      image_version = "composer-3-airflow-2.9.1-build.1"
      pypi_packages = {
        "pymysql"   = "==1.1.1"
        "sqlalchemy" = "==1.4.50"
        "pandas"  = "==2.1.4"
        "requests" = "==2.31.0"
      }
    }
      

    workloads_config {
        scheduler {
          cpu        = 0.5
          memory_gb  = 1
          storage_gb = 1
          count      = 1
        }
        web_server {
          cpu        = 0.5
          memory_gb  = 2
          storage_gb = 1
        }
        worker {
          cpu = 1
          memory_gb  = 4
          storage_gb = 10
          min_count  = 1
          max_count  = 1
        }
      }
      
    environment_size = "ENVIRONMENT_SIZE_SMALL"
  }
}