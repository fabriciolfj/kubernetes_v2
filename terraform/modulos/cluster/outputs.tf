output "cluster_full_name" {
  value = var.cluster_full_name
}

output "cluster_version" {
  value = var.cluster_version
}

output "cluster_api" {
  value = module.eks.endpoint
}