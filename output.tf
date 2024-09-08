output "public_ec2_public_ip" {
  value = aws_instance.ec2.public_ip
}

output "DNS" {
  value = aws_instance.ec2.public_dns
}

output "private_ec2_private_ip" {
  value = aws_instance.private_ec2.private_ip
}