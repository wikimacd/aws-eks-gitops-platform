#################################################
# Terraform & Providers
#################################################
terraform {
  required_version = ">= 1.5.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.35"
    }
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "~> 2.38"
    }
    helm = {
      source  = "hashicorp/helm"
      version = "~> 2.17"
    }
  }
}

#################################################
# AWS Provider
#################################################
variable "region" {
  type    = string
  default = "eu-north-1"
}

provider "aws" {
  region = var.region
}
