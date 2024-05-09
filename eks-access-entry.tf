resource "aws_eks_access_entry" "access-entry" {
  cluster_name      = aws_eks_cluster.burguer.name
  principal_arn     = var.principalArn
  kubernetes_groups = ["burguer"]
  type              = "STANDARD"
}