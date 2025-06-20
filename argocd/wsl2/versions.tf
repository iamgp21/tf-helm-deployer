terraform {
  required_version = "~>1.9.0"
  required_providers {
    helm = {
      source  = "hashicorp/helm"
      version = "2.17.0"
    }
  }
  backend "local" {
    path = "/mnt/c/Users/gaura/OneDrive/GITHUB/iamgp21/TF_STATE/wsl2_argocd.tfstate"
  }
}