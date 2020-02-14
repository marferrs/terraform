resource "aws_vpc" "socialbank-production" {
  cidr_block           = "10.101.0.0/16"
  enable_dns_hostnames = true

  tags = {
    Name = "socialbank-production"
  }
}

resource "aws_vpc" "sb-institutional" {
  cidr_block           = "10.102.0.0/16"
  enable_dns_hostnames = true

  tags = {
    Name = "sb-institutional"
  }
}
