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
  default = "subnet-05e499bf495998c52"
}

variable "subNetB" {
  default = "subnet-0b673077f16b96d70"
}

variable "subNetC" {
  default = "subnet-0ede033cb1de49767"
}
variable "instanceType" {
  default = "t3a.medium"
}

variable "principalArn" {
  default = "arn:aws:iam::668909604236:role/voclabs"
}

variable "policyArn" {
  default = "arn:aws:eks::aws:cluster-access-policy/AmazonEKSClusterAdminPolicy"
}
