variable "aws_region" {
  type    = string
  default = "us-east-1"
}

variable "ec2_ami" {
  type    = string
  default = "ami-0b93ce03dcbcb10f6"
}
# variable "ec2_instance_type" {
#   description = "EC2 Instance Type"
#   type        = list(string)
#   default     = ["t2.micro", "t3.small", "t3.large"]
# }

variable "ec2_instance_type" {
  description = "EC2 Instance Type"
  type = map(string)
  default = {
    "dev" = "t2.micro"
    "acc" = "t3.small"
    "prod" = "t3.large"
  }
}

variable "ec2_tags" {
  description = "EC2 Tags"
  type = map(string)
  default = {
     "Name"="web-server"
     "Cloud"="AWS"
     "Critical"="No"
     "ManagedByTerraform"="Yes"
     "Team"="RDSTeam"
  }
}

