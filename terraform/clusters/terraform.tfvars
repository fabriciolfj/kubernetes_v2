private_subnet_ids = [
  "subnet-0b3d1dc38b4f9eea9",
  "subnet-044eb6d8f74256333",
  "subnet-0f10914801bb68a43",
]
public_subnet_ids = [
  "subnet-0cb5cb6afe348615f",
  "subnet-02c55f550f6dabff3",
  "subnet-0f087b14ee91eab5f",
]
vpc_id = "vpc-06f9726552f8ea03a"


clusters_name_prefix  = "fab211"
cluster_version       = "1.20"
workers_instance_type = "t3.medium"
workers_number_min    = 2
workers_number_max    = 3
workers_storage_size  = 10
aws_region            = "sa-east-1"