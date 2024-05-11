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
  default = "subnet-0844aa8c0a516959f"
}

variable "subNetB" {
  default = "subnet-02ce3a5c8d7519f84"
}
variable "subNetC" {
  default = "subnet-00c99ec92da357b42"
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