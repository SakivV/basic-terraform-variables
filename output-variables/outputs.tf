output "ec2_public_dns" {
  value = "http://${aws_instance.class-ec2-server.public_dns}"
}

output "demo_public_ip" {
  value = aws_instance.class-ec2-server.public_ip
}

output "ec2_arn" {
  value = substr(aws_instance.class-ec2-server.arn,44,24)
}