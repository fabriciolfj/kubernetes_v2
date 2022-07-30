output "aws_region" {
  value = var.aws_region
}

output "cluster_full_name" {
  value = "${var.clusters_name_prefix}-${terraform.workspace}"
}

output "cluster_version" {
  value = var.cluster_version
}

output "cluster_api" {
  value = module.cluster.cluster_api
}