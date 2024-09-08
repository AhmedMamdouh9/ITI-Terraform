resource "aws_nat_gateway" "my_nat" {
  allocation_id = aws_eip.nat.id
  subnet_id     = aws_subnet.my_subnet[0].id
  tags = {
    Name = "NAT"
  }
}


