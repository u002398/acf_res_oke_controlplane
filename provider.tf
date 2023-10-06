terraform {
  required_providers {
    oci = {
      source = "oracle/oci"
    }
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = ">= 2.0.0"
    }
  }
}

provider "oci" {
  region = var.region
}

