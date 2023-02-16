terraform {
  cloud {
    organization = "melimet-org"
    workspaces {
      name = "cloud-deployment"
    }
  }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }
  required_version = ">= 1.2.0"
}

provider "aws" {
  region = "eu-north-1"
}
