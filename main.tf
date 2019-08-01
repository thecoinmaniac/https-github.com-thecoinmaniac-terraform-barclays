###############################################################################
# Provider
###############################################################################
provider "aws" {
  region     = "${var.vpc_region}"
}

###############################################################################
# Base Network
###############################################################################

module "vpc" {
  source = "./vpc"

  vpc_region     = "${var.vpc_region}"
  vpc_name       = "${var.vpc_name}"
  vpc_cidr_block = "${var.vpc_cidr_block}"
}

module "igw" {
  source = "./igw"
  vpc_id      = "${module.vpc.id}"
  vpc_name    = "${var.vpc_name}"
  
}

module "subnet_public" {
  source = "./sn-public"

  vpc_id      = "${module.vpc.id}"
  vpc_region  = "${module.vpc.region}"
  subnet_name = "${var.subnet_public}"
  subnet_cidr = "${var.subnet_public_cidr}"
  subnet_az   = "${var.subnet_public_az}"
  route_table_id = "${module.igw.public_rt_id}"
}

module "subnet_public_01" {
  source = "./sn-public"

  vpc_id      = "${module.vpc.id}"
  vpc_region  = "${module.vpc.region}"
  subnet_name = "${var.subnet_public_01}"
  subnet_cidr = "${var.subnet_public_cidr_01}"
  subnet_az   = "${var.subnet_public_az_01}"
  route_table_id = "${module.igw.public_rt_id}"
}

module "subnet_public_02" {
  source = "./sn-public"

  vpc_id      = "${module.vpc.id}"
  vpc_region  = "${module.vpc.region}"
  subnet_name = "${var.subnet_public_02}"
  subnet_cidr = "${var.subnet_public_cidr_02}"
  subnet_az   = "${var.subnet_public_az_02}"
  route_table_id = "${module.igw.public_rt_id}"
}

module "subnet_private_01" {
  source = "./sn-private"

  vpc_id      = "${module.vpc.id}"
  vpc_region  = "${module.vpc.region}"
  subnet_name = "${var.subnet_private_01}"
  subnet_cidr = "${var.subnet_private_01_cidr}"
  subnet_az   = "${var.subnet_private_01_az}"
  route_table_id = "${module.igw.private_rt_id}"

}

module "bastion_server" {
  source = "./ec2"
  
  ami_name         = "${var.bastion_ami}"
  instance_type    = "${var.bastion_instance_type}"
  subnet_id        = "${module.subnet_public.id}"
}


