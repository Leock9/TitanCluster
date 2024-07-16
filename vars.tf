variable "labRoleArn" {
  default = "arn:aws:iam::668909604236:role/LabRole"
}

variable "projectName" {
  default = "burguerspace"
}

variable "accessConfig" {
  default = "API_AND_CONFIG_MAP"
}

variable "subNetA" {
  default = "subnet-0e0588caa68e07d47"
}

variable "subNetB" {
  default = "subnet-0bfab90e25600ba01"
}

variable "subNetC" {
  default = "subnet-0ac8b87f72d07c5db"
}
variable "instanceType" {
  default = "t3a.medium"
}

variable "principalArn" {
  default = "arn:aws:iam::787463934853:role/voclabs"
}

variable "policyArn" {
  default = "arn:aws:eks::aws:cluster-access-policy/AmazonEKSClusterAdminPolicy"
}

variable "region" {
  default = "us-east-1"
}
