resource "aws_security_group" "default" {
  name   = var.instance_name
  vpc_id = aws_vpc.default.id

  ingress {
    cidr_blocks = [
      "0.0.0.0/0"
    ]

    from_port = 22
    to_port   = 22
    protocol  = "tcp"
  }

  ingress {
    cidr_blocks = [
      "0.0.0.0/0"
    ]

    from_port = 51820
    to_port   = 51820
    protocol  = "tcp"
  }

  //Terraform removes the default rule
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "${var.instance_name}"
  }
}
