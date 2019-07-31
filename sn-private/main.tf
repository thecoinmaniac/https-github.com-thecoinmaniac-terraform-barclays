## Private subnet

resource "aws_subnet" "private" {
  vpc_id            = "${var.vpc_id}"
  cidr_block        = "${var.subnet_cidr}"
  availability_zone = "${var.subnet_az}"

  tags = {
    Name = "private_${var.subnet_name}"
  }
}