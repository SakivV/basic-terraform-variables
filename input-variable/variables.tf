variable "aws_region" {
  type = string
  default = "us-east-1"
}

variable "ec2_ami" {
  type = string
  default = "ami-0b93ce03dcbcb10f6"
}

variable "ec2_instance_type" {
  type = string
}

variable "ec2_name" {
  type = string
  default = "nginx"
}