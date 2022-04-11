terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~>4.16.0"
    }
  }
}

# Guardaria o tfstate no GCS caso houvesse a possibilidade de criar o bucket
#terraform {
#  backend "s3" {
#    bucket = "terraform-mb-tfstates"
#    key    = "terraform-test.tfstate"
#    Pegar a region
#    region = ""
#  }
#}

provider "google" {
  project = var.project_id
  region  = var.region
}