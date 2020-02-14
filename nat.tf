resource "aws_eip" "eip-sb-production" {
  vpc   = true

  tags = {
    Name = "eip-sb-production"
  }
}

resource "aws_nat_gateway" "nat-sb-production" {
  subnet_id     = aws_subnet.sb-prod-1a-public.id
  allocation_id = aws_eip.eip-sb-production.id

  tags = {
    Name = "nat-sb-production"
  }
}


