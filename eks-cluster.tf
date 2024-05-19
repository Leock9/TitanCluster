resource "aws_eks_cluster" "burguer" {
  name     = var.projectName
  role_arn = var.labRoleArn
  
  vpc_config {
    subnet_ids         = ["${var.subNetA}", "${var.subNetB}", "${var.subNetC}"]
    security_group_ids = [data.aws_security_group.sg.id]
  }

  access_config {
    authentication_mode = var.accessConfig
  }
}