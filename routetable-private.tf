resource "aws_route_table" "sb-production-1a-private" {
  vpc_id = aws_vpc.socialbank-production.id

  route {
    cidr_block     = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.nat-sb-production.id
  }

  tags = {
    Name = "sb-production-1a-private"
  }
}

resource "aws_route_table" "sb-production-1b-private" {
  vpc_id = aws_vpc.socialbank-production.id

  route {
    cidr_block     = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.nat-sb-production.id
  }

  tags = {
    Name = "sb-production-1b-private"
  }
}

resource "aws_route_table" "sb-production-1c-private" {
  vpc_id = aws_vpc.socialbank-production.id

  route {
    cidr_block     = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.nat-sb-production.id
  }

  tags = {
    Name = "sb-production-1c-private"
  }
}

resource "aws_route_table_association" "private_a" {
  subnet_id      = aws_subnet.sb-prod-1a-private.id
  route_table_id = aws_route_table.sb-production-1a-private.id
}

resource "aws_route_table_association" "private_b" {
  subnet_id      = aws_subnet.sb-prod-1b-private.id
  route_table_id = aws_route_table.sb-production-1b-private.id
}

resource "aws_route_table_association" "private_c" {
  subnet_id      = aws_subnet.sb-prod-1c-private.id
  route_table_id = aws_route_table.sb-production-1c-private.id
}