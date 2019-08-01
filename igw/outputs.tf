output "gateway_id" {
  value = "${aws_internet_gateway.internet_gateway.id}"
}

output "public_rt_id" {
  value = "${aws_route_table.public_route_table.id}"
}

output "private_rt_id" {
  value = "${aws_route_table.private_route_table.id}"
}