terraform {
  backend "s3" {
    bucket = "macdee-tf-state-eu-north-1"
    key    = "aws-eks-gitops/dev/terraform.tfstate"
    region = "eu-north-1"
    encrypt = true
  }
}
