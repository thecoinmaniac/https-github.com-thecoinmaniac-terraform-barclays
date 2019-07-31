###############################################################################
# Provider
###############################################################################
provider "aws" {
  access_key = "${var.aws_access_key_id}"
  secret_key = "${var.aws_secret_access_key}"
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