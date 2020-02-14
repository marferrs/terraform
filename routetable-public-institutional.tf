resource "aws_route_table" "sb-institutional-1a-public" {
  vpc_id = aws_vpc.sb-institutional.id
  
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.ig-sb-institutional.id 

  }

  route {
    cidr_block = "10.101.28.146/32"
    vpc_peering_connection_id = aws_vpc_peering_connection.sb-production-to-sb-institutional.id

  }

  route {
    cidr_block = "10.101.27.52/32"
    vpc_peering_connection_id = aws_vpc_peering_connection.sb-production-to-sb-institutional.id

  }

  tags = {
    Name = "sb-institutional-1a-public"
  }
 
}

resource "aws_route_table" "sb-institutional-1c-public" {
  vpc_id = aws_vpc.sb-institutional.id
  
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.ig-sb-institutional.id 

  }

  route {
    cidr_block = "10.101.28.146/32"
    vpc_peering_connection_id = aws_vpc_peering_connection.sb-production-to-sb-institutional.id

  }

  route {
    cidr_block = "10.101.27.52/32"
    vpc_peering_connection_id = aws_vpc_peering_connection.sb-production-to-sb-institutional.id

  }

  tags = {
    Name = "sb-institutional-1c-public"
  }
 
}

resource "aws_route_table_association" "public_a_inst" {
  subnet_id      = aws_subnet.sb-institutional-1a.id 
  route_table_id = aws_route_table.sb-institutional-1a-public.id  
}

resource "aws_route_table_association" "public_c_inst" {
  subnet_id      = aws_subnet.sb-institutional-1c.id 
  route_table_id = aws_route_table.sb-institutional-1c-public.id  
}


