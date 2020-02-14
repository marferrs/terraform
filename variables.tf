variable "vpc_cidr_block" {
  description = "Range of IPv4 address for the VPC."
  default     = "10.101.0.0/16"
}

variable "az_count" {
  default     = "2"
}

variable "region" {
  default = "us-west-2"
}