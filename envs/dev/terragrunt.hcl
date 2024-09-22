terraform {
  source = "${dirname(find_in_parent_folders())}/common-tf/"
}

include "root" {
  path = find_in_parent_folders()
}

inputs = {
  vpc_name                            = "my_vpc"
  vpc_cidr_block                      = "10.0.0.0/24"
  availability_zones                  = ["us-east-1a", "us-east-1b"]
  private_subnets                     = ["10.0.0.32/27", "10.0.0.64/27"]
  public_subnets                      = ["10.0.0.0/27"]
  enable_nat_gateway                  = true
  enable_vpn_gateway                  = false
  create_multiple_intra_route_tables  = true
  create_multiple_public_route_tables = true
  terraform_tag                       = true
  environment_tag                     = "dev"
}