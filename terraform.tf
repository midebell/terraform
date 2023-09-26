provider "aws" {
  region  = "us-east-1"
  profile = "default"
}

terraform {
  backend "s3" {
    bucket  = "ob-tf-24"
    encrypt = true
    key     = "terraform/terraform.tfstate"
    region  = "us-east-1"
  }
}