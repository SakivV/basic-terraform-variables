variable "aws_region" {
  type = string
  default = "us-east-1"
}

variable "ec2_ami" {
  type = string
  #default = "ami-0b93ce03dcbcb10f6"
  validation {
    condition = length(var.ec2_ami)>4 && substr(var.ec2_ami, 0, 4) == "ami-"
    error_message = "Enter valid AMI starting with ami-"
  }
}

variable "ec2_instance_type" {
  description = "EC2 Instance Type"
  type = string
  default = "t2.micro"
  validation {
    error_message = "Only t1.micro,t2.micro and t3.small instances can be created"
    condition = contains(["t1.micro","t2.micro","t3.small"],var.ec2_instance_type)
  }
}
