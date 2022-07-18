module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  name = "my-vpc"
  cidr = var.vpc_cidr

  azs             = var.availability_zones
  private_subnets = var.private_subnets_cidr
  public_subnets  = var.public_subnets_cidr

  enable_nat_gateway = true
  enable_vpn_gateway = true

  tags = {
    Terraform = "true"
    Environment = "dev"
  }
}

# module "instance" {
#   source               = "./modules/instance"
#   vpc_id = module.network.vpc_id
#   sg_id = module.network.sg_id
#   subnet_id = module.network.subnet_id


# }
# module "iam" {

#   source = "../modules/iam"
#   # Cloud Posse recommends pinning every module to a specific version
#   # version     = "x.x.x"
#   name       = "moh"
#   user_name  = "moh@companyname.com"
#   pgp_key    = "keybase:moh"
# # groups     = ["admins"]

# }


