variable "vpc_name" {
  type = string
}

variable "vpc_cidr_block" {
  type = string
}

variable "availability_zones" {
  type = list(string)
}

variable "private_subnets" {
  type = list(string)
}

variable "public_subnets" {
  type = list(string)
}

variable "enable_nat_gateway" {
  type = bool
}

variable "enable_vpn_gateway" {
  type = bool
}

variable "create_multiple_intra_route_tables" {
  type = bool
}

variable "create_multiple_public_route_tables" {
  type = bool
}

variable "terraform_tag" {
  type = string
}

variable "environment_tag" {
  type = string
}