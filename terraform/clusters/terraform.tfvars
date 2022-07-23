aws_region = "sa-east-1"

private_subnet_ids = [
  "subnet-086aac2a3857325de",
  "subnet-03661ef73bdb41d86",
  "subnet-090394720d5ba0728",
]
public_subnet_ids = [
  "subnet-0303eb955450d4ac3",
  "subnet-0f4c9ac7630419fae",
  "subnet-0b910ceb9ce6731b3",
]
vpc_id = "vpc-0af510eb544e8ec34"

clusters_name_prefix  = "fabriciolfj"
cluster_version       = "1.20"
workers_instance_type = "t3.medium"
workers_number_min    = 2
workers_number_max    = 3
workers_storage_size  = 10