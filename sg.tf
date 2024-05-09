data "aws_security_group" "sg" {
  name  = "SG-${var.projectName}"
}