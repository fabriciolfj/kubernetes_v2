resource "aws_eks_cluster" "eks_cluster" {
  name     = var.cluster_full_name
  version  = var.cluster_version
  role_arn = aws_iam_role.eks_cluster_role.arn

  vpc_config {
    security_group_ids = [aws_security_group.eks_cluster_sg.id]
    subnet_ids         = concat(var.private_subnets, var.public_subnets)
  }

  depends_on = [
    aws_iam_role_policy_attachment.eks_clusterrole_policy_attachment,
    aws_iam_role_policy_attachment.eks_servicerole_policy_attachment,
  ]
}

resource "aws_eks_node_group" "workers" {
  cluster_name    = aws_eks_cluster.eks_cluster.name
  node_group_name = "${var.cluster_full_name}-workers-asg"
  node_role_arn   = aws_iam_role.workers.arn
  subnet_ids      = var.private_subnet_ids

  scaling_config {
    desired_size = 1
    max_size     = 1
    min_size     = 1
  }

  depends_on = [
    aws_iam_role_policy_attachment.AmazonEKSWorkerNodePolicy,
    aws_iam_role_policy_attachment.AmazonEKS_CNI_Policy,
    aws_iam_role_policy_attachment.AmazonEC2ContainerRegistryReadOnly,
  ]
}