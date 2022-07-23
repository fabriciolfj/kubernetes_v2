resource "aws_s3_bucket" "cluster_tf_state_s3_bucket" {
  bucket = "${var.cluster_name_prefix}-terraform-state"
  lifecycle {
    prevent_destroy = false
  }
  tags = {
    Name  = "${var.cluster_name_prefix} S3 remoto terraform state store"
    ManagedBy = "terraform"
  }
}

resource "aws_s3_bucket_versioning" "versioning" {
  bucket = aws_s3_bucket.cluster_tf_state_s3_bucket.id
  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_s3_bucket" "cluster_vpc_tf_state_s3_bucket" {
  bucket = "${var.cluster_name_prefix}-vpc-terraform-state"
  lifecycle {
    prevent_destroy = false
  }
  tags = {
    Name  = "${var.cluster_name_prefix} VPC remoto terraform state store"
    ManagedBy = "terraform"
  }
}

resource "aws_s3_bucket_versioning" "versioning_vpc" {
  bucket = aws_s3_bucket.cluster_vpc_tf_state_s3_bucket.id
  versioning_configuration {
    status = "Enabled"
  }
}