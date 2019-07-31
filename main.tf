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

module "subnet_public" {
  source = "./sn-public"

  vpc_id      = "${module.vpc.id}"
  vpc_region  = "${module.vpc.region}"
  subnet_name = "${var.subnet_public}"
  subnet_cidr = "${var.subnet_public_cidr}"
  subnet_az   = "${var.subnet_public_az}"
}
