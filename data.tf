data "aws_instance" "ec2" {
  depends_on = [aws_eks_cluster.burguer, aws_eks_node_group.node-group]
  filter {
    name   = "tag:eks:nodegroup-name"
    values = ["NG-burguerspace"]
  }
}