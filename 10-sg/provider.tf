terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.0.0"
    }
  }

  backend "s3" {
    bucket = "27s-remote-bucket"
    key    = "expense-sg"
    region = "us-east-1"
    dynamodb_table = "27s-locking"
  }
}

provider "aws" {
  # Configuration options
  region = "us-east-1"
}