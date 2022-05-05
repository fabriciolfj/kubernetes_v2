aws_region = "sa-east-1"

private_subnet_ids = [
  "subnet-044d6313588e3d3db",
  "subnet-03abef1a5ec2a3230",
  "subnet-01aacc595857060e0",
]
public_subnet_ids = [
  "subnet-0e62e62441f57cb36",
  "subnet-022cfe829a62b1e44",
  "subnet-01fc600fd1aaf0cd5",
]
vpc_id = "vpc-093d3fb0d594d45f3"


clusters_name_prefix  = "fabriciolfj"
cluster_version       = "1.20"
workers_instance_type = "t3.medium"
workers_number_min    = 2
workers_number_max    = 3
workers_storage_size  = 10