resource "aws_s3_bucket" "cluster_tf_state_s3_bucket" {
  bucket = "${var.cluster_name_prefix}-terraform-state"
  acl = "private"
  versioning {
    enabled = true
  }
  lifecycle {
    prevent_destroy = true
  }
  tags = {
    Name  = "${var.cluster_name_prefix} S3 remoto terraform state store"
    ManagedBy = "terraform"
  }
}

resource "aws_s3_bucket" "cluster_vpc_tf_state_s3_bucket" {
  bucket = "${var.cluster_name_prefix}-terraform-state"
  acl = "private"
  versioning {
    enabled = true
  }
  lifecycle {
    prevent_destroy = true
  }
  tags = {
    Name  = "${var.cluster_name_prefix} VPC remoto terraform state store"
    ManagedBy = "terraform"
  }
}