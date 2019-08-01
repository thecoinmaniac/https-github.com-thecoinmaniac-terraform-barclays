## Private subnet
resource "aws_subnet" "private" {
  vpc_id            = "${var.vpc_id}"
  cidr_block        = "${var.subnet_cidr}"
  availability_zone = "${var.subnet_az}"

  tags = {
    Name = "private_${var.subnet_name}"
  }
}

# Associate the routing table to private subnet
resource "aws_route_table_association" "rt_assn" {
  subnet_id      = "${aws_subnet.private.id}"
  route_table_id = "${var.route_table_id}"
}