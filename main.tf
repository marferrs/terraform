provider "aws" {
  region  = "us-west-2"
  version = "~> 2.0"
}

terraform {
  backend "s3" {
    bucket = "terraform-tfstate-stealth"
    key    = "terraformt.tfstate"
    region = "us-east-1"
  }
}