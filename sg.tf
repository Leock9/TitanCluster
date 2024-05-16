data "aws_security_group" "sg" {
  name = "SG-${var.projectName}"
}

data "aws_vpc" "default" {
  default = true
}