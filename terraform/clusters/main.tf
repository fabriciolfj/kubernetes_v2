module "cluster" {
  source                = "../modulos/cluster"
  vpc_id                = var.vpc_id
  public_subnets        = var.public_subnet_ids
  private_subnets       = var.private_subnet_ids
  cluster_full_name     = "${var.clusters_name_prefix}-${terraform.workspace}"
  cluster_version       = var.cluster_version
  workers_instance_type = var.workers_instance_type
  workers_ami_id        = "ami-090006f29ecb2d79a"
  workers_number_min    = var.workers_number_min
  workers_number_max    = var.workers_number_max
  workers_storage_size  = var.workers_storage_size
  common_tags           = local.common_tags
  aws_region            = var.aws_region
}

locals {
  common_tags = {
    ManagedBy   = "terraform"
    ClusterName = "${var.clusters_name_prefix}-${terraform.workspace}"
  }
}