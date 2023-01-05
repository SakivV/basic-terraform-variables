resource "aws_instance" "class-ec2-server" {
  instance_type = var.ec2_instance_type #Refer value from ec2_instance_type variable
  ami = var.ec2_ami
  vpc_security_group_ids = [aws_security_group.class-ec2-server-sg.id]
  #key_name = "jenkins-slave"
  user_data = <<-EOF
        #!/bin/bash
        sudo apt update -y &&
        sudo apt install -y nginx
        echo "<h1>Welcome to Terraform nginx-demo</h1>" > /var/www/html/index.html
        EOF
  tags = {
    "Name" = var.ec2_name
  }
}