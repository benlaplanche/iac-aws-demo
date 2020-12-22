terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
  shared_credentials_file = "/Users/benlaplanche/.aws/credentails"
}


resource "aws_s3_bucket" "snykcon-2020-pictures" {
  bucket = "snykcon-2020-pictures"
  acl    = "public-read-write"

  tags = {
    Name        = "Snykcon 2020 Pictures"
    Environment = "Production"
  }
}