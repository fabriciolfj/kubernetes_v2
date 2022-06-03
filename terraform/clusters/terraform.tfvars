aws_region = "sa-east-1"

private_subnet_ids = [
  "subnet-041875bb24f6c1867",
  "subnet-0e732736850dd0d38",
  "subnet-08c5cb9b98cdcc435",
]
public_subnet_ids = [
  "subnet-07f7407eb3f5ba8ad",
  "subnet-004f379a1f0b833db",
  "subnet-09ad337f1af371d48",
]
vpc_id = "vpc-076e738e37a0558ae"



clusters_name_prefix  = "fabriciolfj"
cluster_version       = "1.20"
workers_instance_type = "t3.medium"
workers_number_min    = 2
workers_number_max    = 3
workers_storage_size  = 10