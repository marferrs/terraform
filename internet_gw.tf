resource "aws_internet_gateway" "ig-sb-production" {
  vpc_id = aws_vpc.socialbank-production.id

  tags = {
    Name = "ig-sb-production"
  }
}

resource "aws_internet_gateway" "ig-sb-institutional" {
  vpc_id = aws_vpc.sb-institutional.id

  tags = {
    Name = "ig-sb-institutional"
  }
}