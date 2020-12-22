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


resource "aws_s3_bucket" "pictures-of-waleeds-hair" {
  bucket = "pictures-of-waleeds-hair"
  acl    = "public-read-write"

  tags = {
    Name        = "Pictures of Waleeds Hair"
    Environment = "Production"
    Hairstyle = "Extreme"
  }
}