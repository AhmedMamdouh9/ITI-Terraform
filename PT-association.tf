resource "aws_route_table_association" "public_subnet_assoc" {
  subnet_id      = aws_subnet.my_subnet[0].id
  route_table_id = aws_route_table.public_route_table.id
}

resource "aws_route_table_association" "private_subnet_assoc" {
  subnet_id      = aws_subnet.my_subnet[1].id
  route_table_id = aws_route_table.private_route_table.id
}

