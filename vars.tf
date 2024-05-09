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
  default = "subnet-0a52ad2ddd6a3e51c"
}

variable "subNetB" {
  default = "subnet-0b280d3302755d5a7"
}
variable "subNetC" {
  default = "subnet-089d023d028ecb2c1"
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