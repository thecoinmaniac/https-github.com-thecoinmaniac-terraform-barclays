resource "aws_instance" "ec2" {
  ami                         = "${var.ami_name}"
  instance_type               = "${var.instance_type}"
  subnet_id                   = "${var.subnet_id}"
  associate_public_ip_address = true
  security_groups             = "${var.security_groups}"
}