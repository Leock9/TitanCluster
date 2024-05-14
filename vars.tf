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
  default = "subnet-0298f0584f0da207f"
}

variable "subNetB" {
  default = "subnet-001c26a283647c62e"
}

variable "subNetC" {
  default = "subnet-057e227d743827657"
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
