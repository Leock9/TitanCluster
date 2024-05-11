variable "labRoleArn" {
  type = string
  description = "ARN of the IAM role to be used by the EKS cluster" 
  default = "arn:aws:iam::668909604236:role/LabRole"
}

variable "projectName" {
  default = "burguerspace"
}

variable "accessConfig" {
  default = "API_AND_CONFIG_MAP"
}

variable "subNetA" {
  default = "subnet-05522fcfabb0d4109"
}

variable "subNetB" {
  default = "subnet-082581a2dbc5070d1"
}
variable "subNetC" {
  default = "subnet-08c5878e350e5febe"
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