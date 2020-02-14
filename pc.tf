resource "aws_vpc_peering_connection" "sb-production-to-sb-institutional" {
  vpc_id      = aws_vpc.socialbank-production.id
  peer_vpc_id = aws_vpc.sb-institutional.id
  auto_accept = true

  tags = {
    Name = "sb-production-to-sb-institutional"
  }


}

resource "aws_vpc_peering_connection_options" "sb-production-to-sb-institutional" {
  vpc_peering_connection_id = aws_vpc_peering_connection.sb-production-to-sb-institutional.id

  accepter {
    allow_remote_vpc_dns_resolution = false
  }

  requester {
    allow_vpc_to_remote_classic_link = false
    allow_classic_link_to_remote_vpc = false
  }
}