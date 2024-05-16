resource "aws_eks_node_group" "node-group" {
  cluster_name    = aws_eks_cluster.burguer.name
  node_group_name = "NG-${var.projectName}"
  node_role_arn   = var.labRoleArn
  subnet_ids      = ["${var.subNetA}", "${var.subNetB}", "${var.subNetC}"]
  disk_size       = 50
  instance_types  = [var.instanceType]

  scaling_config {
    desired_size = 1
    max_size     = 2
    min_size     = 1
  }

  update_config {
    max_unavailable = 1
  }
}