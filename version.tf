terraform {
  required_providers {
    kind = {
      source  = "kyma-incubator/kind"
      version = "0.0.9"
    }
    helm = {
      source  = "hashicorp/helm"
      version = "2.3.0"
    }
  }
}