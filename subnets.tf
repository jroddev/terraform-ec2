resource "aws_subnet" "default" {
  cidr_block        = cidrsubnet(aws_vpc.default.cidr_block, 3, 1)
  vpc_id            = aws_vpc.default.id
  availability_zone = "ap-southeast-2a"
}

resource "aws_route_table" "default" {
  vpc_id = aws_vpc.default.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.default.id
  }

  tags = {
    Name = "${var.instance_name}"
  }
}

resource "aws_route_table_association" "default" {
  subnet_id      = aws_subnet.default.id
  route_table_id = aws_route_table.default.id
}
