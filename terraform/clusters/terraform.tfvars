aws_region = "sa-east-1"

private_subnet_ids = [
  "subnet-07900ce1baa8bd9c6",
  "subnet-07397665d60687830",
  "subnet-0e41a1b26e35fb3b6",
]
public_subnet_ids = [
  "subnet-0fe10969acb67dd5b",
  "subnet-00bcbcbac260c1a2b",
  "subnet-0febacb53239143cd",
]
vpc_id = "vpc-00eb68ec4a1aa2436"


clusters_name_prefix  = "fabriciolfj"
cluster_version       = "1.20"
workers_instance_type = "t3.medium"
workers_number_min    = 2
workers_number_max    = 3
workers_storage_size  = 10