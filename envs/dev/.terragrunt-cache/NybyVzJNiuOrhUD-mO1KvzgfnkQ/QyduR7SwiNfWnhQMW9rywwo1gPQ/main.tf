module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  name = var.vpc_name
  cidr = var.vpc_cidr_block

  azs             = var.availability_zones
  private_subnets = var.private_subnets
  public_subnets  = var.public_subnets

  enable_nat_gateway = var.enable_nat_gateway
  enable_vpn_gateway = var.enable_vpn_gateway
  create_multiple_intra_route_tables = var.create_multiple_intra_route_tables
  create_multiple_public_route_tables = var.create_multiple_public_route_tables

  tags = {
    
    Terraform = var.terraform_tag
    Environment = var.environment_tag
  }
}

# terraform {
#   backend "s3" {
#     bucket         = "my-tgrnt-bkt-d"
#     key            = "${path_relative_to_include()}/terraform.tfstate"
#     region         = "us-east-1"
#     encrypt        = true
#     dynamodb_table = "my-lock-table"
#   }
# }