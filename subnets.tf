resource "aws_subnet" "sb-prod-1a-public" {
  vpc_id    = aws_vpc.socialbank-production.id
  cidr_block = "10.101.0.0/20"
  availability_zone = "${var.region}a" 

  tags = {
    Name = "sb-prod-1a-public"
  }

}
resource "aws_subnet" "sb-prod-1c-public" {
  vpc_id    = aws_vpc.socialbank-production.id
  cidr_block = "10.101.16.0/20"
  availability_zone = "${var.region}c" 

  tags = {
    Name = "sb-prod-1c-public"
  }

}
resource "aws_subnet" "sb-prod-1a-private" {
  vpc_id    = aws_vpc.socialbank-production.id
  cidr_block = "10.101.32.0/24"
  availability_zone = "${var.region}a" 

  tags = {
    Name = "sb-prod-1a-private"
  }

}
resource "aws_subnet" "sb-prod-1b-private" {
  vpc_id    = aws_vpc.socialbank-production.id
  cidr_block = "10.101.34.0/24"
  availability_zone = "${var.region}b" 

  tags = {
    Name = "sb-prod-1b-private"
  }

}

resource "aws_subnet" "sb-prod-1c-private" {
  vpc_id    = aws_vpc.socialbank-production.id
  cidr_block = "10.101.33.0/24"
  availability_zone = "${var.region}c" 

  tags = {
    Name = "sb-prod-1c-private"
  }

}

resource "aws_subnet" "sb-institutional-1a" {
  vpc_id    = aws_vpc.sb-institutional.id
  cidr_block = "10.102.0.0/27"
  availability_zone = "${var.region}a" 

  tags = {
    Name = "sb-institutional-1a"
  }

}

resource "aws_subnet" "sb-institutional-1c" {
  vpc_id    = aws_vpc.sb-institutional.id
  cidr_block = "10.102.0.32/27"
  availability_zone = "${var.region}c" 

  tags = {
    Name = "sb-institutional-1c"
  }

}
