provider "google" {
  project = "endless-gasket-459620-i4"
  region  = "us-central1"
}

resource "google_composer_environment" "raspagem_suzano" {
  name   = "raspagem-suzano"
  region = "us-central1"
}

resource "google_storage_bucket_object" "dag_usd_cny" {
  name   = "dags/extrair_usd_cny.py"
  bucket = "us-central1-raspagem-suzano-bucket"
  source = "dags/extrair_usd_cny.py"
}

resource "google_storage_bucket_object" "dag_india" {
  name   = "dags/raspagem_india.py"
  bucket = "us-central1-raspagem-suzano-bucket"
  source = "dags/raspagem_india.py"
}
