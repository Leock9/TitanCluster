resource "aws_eks_access_policy_association" "eks-policy" {
  cluster_name  = aws_eks_cluster.burguer.name
  policy_arn    = var.policyArn
  principal_arn = var.principalArn

  access_scope {
    type = "cluster"
  }
}