terraform {
    required_providers {
        aws = {
        source  = "hashicorp/aws"
        version = "5.92.0"
        }
    }
    backend "s3" {
      bucket = "mydaws-remote-state1"
      key  = "expense-db-dev"
      region = "us-east-1"
      dynamodb_table = "mydaws-locking"
    }
}

provider "aws" {
    region = "us-east-1"
}