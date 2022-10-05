resource "aws_instance" "default" {
  ami                    = var.ami_id
  instance_type          = "t3.nano"
  vpc_security_group_ids = ["${aws_security_group.default.id}"]
  subnet_id              = aws_subnet.default.id
  user_data              = file("user_data.sh")

  tags = {
    Name = "${var.instance_name}"
  }
}
