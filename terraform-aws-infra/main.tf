module "vpc" {
  source     = "./modules/vpc"
  cidr_block = var.vpc_cidr
}

module "subnets" {
  source              = "./modules/subnet"
  vpc_id              = module.vpc.vpc_id
  public_subnet_cidrs = var.public_subnet_cidrs
  private_subnet_cidrs = var.private_subnet_cidrs
  availability_zones  = var.availability_zones
}

module "igw" {
  source = "./modules/internet_gateway"
  vpc_id = module.vpc.vpc_id
}

module "route_table" {
  source            = "./modules/route_table"
  vpc_id            = module.vpc.vpc_id
  igw_id            = module.igw.igw_id
  public_subnet_ids = module.subnets.public_subnet_ids
}

module "ec2" {
  source          = "./modules/ec2"
  subnet_id       = module.subnets.public_subnet_ids[0]
  instance_ami    = var.instance_ami
  instance_type   = var.instance_type
  public_key_path = var.public_key_path
  vpc_id          = module.vpc.vpc_id
}

