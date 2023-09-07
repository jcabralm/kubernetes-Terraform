terraform {
  required_version = "~> 0.13"
  required_providers {
    mycloud={
        source = "hashicorp/kubernetes"
        version = "~> 1.13"
    }
  }
    backend "local" {
      path = "/tmp/terraform.tfstate"
    }
}
#cjdevops
provider "kubernetes" {
  host = "https://127.0.0.1:45265"
}