## Public subnet
resource "aws_subnet" "public" {
  vpc_id            = "${var.vpc_id}"
  cidr_block        = "${var.subnet_cidr}"
  availability_zone = "${var.subnet_az}"

  tags = {
    Name = "public_${var.subnet_name}"
  }
}

## Associate the routing table to public subnet
resource "aws_route_table_association" "rt_assn" {
  subnet_id      = "${aws_subnet.public.id}"
  route_table_id = "${module.igw.public_rt_id}"
}

