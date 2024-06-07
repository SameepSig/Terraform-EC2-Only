variable ami {
    description = "default ami"
    default = "ami-04b70fa74e45c3917"
}

variable "instance_type" {
  description = "instance type"
  default = "t2.medium"
}

variable "key_name" {
    description = "default keypair"
    default = "Sameep-key-pair"
}

variable "subnet_id" {
    description = "public subnet 1"
    default = "subnet-06039f3f8ed90083c" // Depends on the output of another terraform script
}

variable "security_group_id" {
    description = "security group id"
    default = "sg-01054c5e91250ccf4" // Depends on the output of another terraform script 
}

variable "iam_instance_profile" {
    description = "IAM instance profile"
    default = "sameep_iam_instance_profile"
}