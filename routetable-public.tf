resource "aws_route_table" "sb-production-1a-public" {
  vpc_id = aws_vpc.socialbank-production.id
  
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.ig-sb-production.id 

  }

  tags = {
    Name = "sb-production-1a-public"
  }
 
}

resource "aws_route_table" "sb-production-1c-public" {
  vpc_id = aws_vpc.socialbank-production.id
  
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.ig-sb-production.id 

  }

  tags = {
    Name = "sb-production-1c-public"
  }
 
}

resource "aws_route_table_association" "public_a" {
  subnet_id      = aws_subnet.sb-prod-1a-public.id 
  route_table_id = aws_route_table.sb-production-1a-public.id  
}

resource "aws_route_table_association" "public_c" {
  subnet_id      = aws_subnet.sb-prod-1c-public.id 
  route_table_id = aws_route_table.sb-production-1c-public.id  
}


