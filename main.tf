# module "vpc" {
#   source = "terraform-aws-modules/vpc/aws"

#   name = "my-vpc"
#   cidr = "10.0.0.0/16"

#   azs             = ["eu-east-1a", "eu-east-1b", "eu-east-1c"]
#   private_subnets = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
#   public_subnets  = ["10.0.101.0/24", "10.0.102.0/24", "10.0.103.0/24"]

#   enable_nat_gateway = true
#   enable_vpn_gateway = true

#   tags = {
#     Terraform = "true"
#     Environment = "production"
#   }
# }

module "network" {
  source               = "./modules/network"
  region               = var.region
  environment          = var.environment
  vpc_cidr             = var.vpc_cidr
  public_subnets_cidr  = var.public_subnets_cidr
  private_subnets_cidr = var.private_subnets_cidr
  availability_zones   = var.availability_zones
  
 
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


