resource "aws_instance" "ec2" {
  ami           = "ami-0d53d72369335a9d6"
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.my_subnet[0].id
  security_groups = [aws_security_group.my_security_group.id]
  key_name = "qw"

  tags = {
    Name = "pubapt_EC2"
  }
  associate_public_ip_address = true
}

resource "aws_instance" "private_ec2" {
  ami           = "ami-0d53d72369335a9d6"
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.my_subnet[1].id
  security_groups = [aws_security_group.my_security_group.id]
  key_name = "qw"
  user_data = <<-EOF
              #!/bin/bash
              sudo apt update -y
              sudo apt install nginx -y
              sudo systemctl start nginx
              sudo systemctl enable nginx
              echo "Ahmed Mamdouh Mostafa  (private EC2)" | sudo tee /var/www/html/index.html
              EOF
  tags = {
    Name = "Private_EC2"
  }
}
