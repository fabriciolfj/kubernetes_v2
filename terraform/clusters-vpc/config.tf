terraform {
  backend "s3" {
    bucket         = "fabricio211-vpc-terraform-state"
    key            = "fabricio211-vpc.tfstate"
    region         = "sa-east-1"
    dynamodb_table = "fabricio211-vpc-terraform-state-lock-dynamodb"
  }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
  required_version = "> 0.14.5"
}

provider "aws" {
  region = var.aws_region
}