#resource "aws_instance" "web" {
#  ami = "ami-095944276e3716f29"
#  instance_type = "t2.micro"
#  subnet_id = aws_subnet.public.id
#  security_groups = [aws_security_group.web.id]
#}

#resource "aws_vpc" "public" {
#  cidr_block = "10.0.0.0/16"
#}

#resource "aws_subnet" "public" {
#  vpc_id = aws_vpc.public.id
#  cidr_block = "10.0.0.0/24"
#}

#resource "aws_security_group" "web" {
#  name = "web"
#  vpc_id = aws_vpc.public.id
#  ingress {
#    protocol = "tcp"
#   from_port = 80
#    to_port = 80
#    cidr_blocks = ["0.0.0.0/0"]
#  }
#  egress {
#    from_port   = 0
#    to_port     = 0
#    protocol    = "-1"
#    cidr_blocks = ["0.0.0.0/0"]
#  }
#}
