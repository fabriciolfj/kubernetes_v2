aws_region = "sa-east-1"
private_subnet_ids = [
  "subnet-03b38950e6330509c",
  "subnet-0d9eb8f699cf63906",
  "subnet-067dc3b7653dc668b",
]
public_subnet_ids = [
  "subnet-0cd7f3b3a6a3675f8",
  "subnet-0a600db90cedc26ad",
  "subnet-00596c2ec28af799a",
]
vpc_id = "vpc-038a9e10b8ce92c28"
clusters_name_prefix  = "fabriciolfj"
cluster_version       = "1.20"
workers_instance_type = "t3.medium"
workers_number_min    = 2
workers_number_max    = 3
workers_storage_size  = 10