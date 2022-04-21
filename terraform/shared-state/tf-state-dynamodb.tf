resource "aws_dynamodb_table" "cluster_dynamodb_tf_state_lock" {
  name = "${var.cluster_name_prefix}-terraform-state-lock-dynamodb"
  hash_key = "LockID"
  read_capacity = 20
  write_capacity = 20
  attribute {
    name = "LockID"
    type = "S"
  }
}

resource "aws_dynamodb_table" "cluster_vpc_dynamodb_tf_state_lock" {
  name = "${var.cluster_name_prefix}-vpc-terraform-state-lock-dynamodb"
  hash_key = "LockID"
  read_capacity = 20
  write_capacity = 20
  attribute {
    name = "LockID"
    type = "S"
  }
}