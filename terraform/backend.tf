terraform {
  backend "s3" {
    bucket = "infra-sent-artifacts"
    key    = "terraform/terraform.tfstate"
    region = "ap-south-1"
  }
}

provider "aws" {
  region = "ap-south-1"
}