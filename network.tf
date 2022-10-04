resource "aws_vpc" "default" {
  cidr_block           = "10.0.0.0/16"
  enable_dns_hostnames = true
  enable_dns_support   = true
  tags = {
    Name = "${var.instance_name}"
  }
}

resource "aws_eip" "default" {
  instance = aws_instance.default.id
  vpc      = true
  tags = {
    Name = "${var.instance_name}"
  }
}

resource "aws_route53_record" "default" {
  zone_id = var.route53_zone_id
  name    = "wireguard.jroddev.com"
  type    = "A"
  ttl     = "300"
  records = ["${aws_eip.default.public_ip}"]
}

