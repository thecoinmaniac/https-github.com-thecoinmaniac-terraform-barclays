## Internet gateway
resource "aws_internet_gateway" "internet_gateway" {
  vpc_id = "${var.vpc_id}"

  tags = {
    Name = "IGW_${var.vpc_name}"
  }
}

# Routing table for public subnet
resource "aws_route_table" "public_route_table" {
  vpc_id = "${var.vpc_id}"

  tags = {
    Name = "Public_RT_${var.vpc_name}"
  }
}

resource "aws_route" "gateway_route" {
  route_table_id         = "${aws_route_table.public_route_table.id}"
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = "${aws_internet_gateway.internet_gateway.id}"
}

# Routing table for private subnet
resource "aws_route_table" "private_route_table" {
  vpc_id = "${var.vpc_id}"

  tags = {
    Name = "Private_RT_${var.vpc_name}"
  }
}

