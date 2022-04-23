terraform {
  backend "s3" {
    bucket         = "fabriciolfj-vpc-terraform-state"
    key            = "fabriciolfj-vpc.tfstate"
    region         = "sa-east-1"
    dynamodb_table = "fabriciolfj-vpc-terraform-state-lock-dynamodb"
  }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.31.0"
    }
  }
  required_version = "> 0.14.5"
}

provider "aws" {
  region = var.aws_region
  version = "> 3.27.0"
}