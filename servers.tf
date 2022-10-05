resource "aws_instance" "default" {
  ami                    = var.ami_id
  instance_type          = var.instance_type
  vpc_security_group_ids = ["${aws_security_group.default.id}"]
  subnet_id              = aws_subnet.default.id
  user_data              = file("user_data.sh")

  # keypair required to connect if not using public ip
  # key_name               = "<keyname"

  tags = {
    Name = "${var.instance_name}"
  }
}
