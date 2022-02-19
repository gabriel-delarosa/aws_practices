provider "aws" {
  region = local.region
}

locals {
  region = var.region
}

################################################################################
# VPC Module
################################################################################

module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  name = var.vpc_name
  cidr = "10.0.0.0/16"

  azs             = ["${local.region}a", "${local.region}b", "${local.region}c"]
  #private_subnets = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
  #private_subnets = var.private_subnets
  #public_subnets  = ["10.0.101.0/24", "10.0.102.0/24", "10.0.103.0/24"]
  public_subnets  = var.public_subnets

  enable_ipv6 = false

  enable_nat_gateway = false
  single_nat_gateway = true
  enable_dns_hostnames = true

  public_subnet_tags = var.public_subnet_tags

  tags = var.tags

  vpc_tags = {
    Name = "vpc-ec2-lab"
  }
}
