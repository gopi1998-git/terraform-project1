
resource "aws_security_group" "ferrari-sg"{
   Name = var.name
   description = "Allow ssh http https"

  ingress {
     description = "ssh"
     from_port = 22
     to_port = 22
     protocol = "tcp"
     cidr_blocks = [var.cidrblock]
  }

  ingress {
     description = "http"
     from_port = 80
     to_port = 80
     protocol = "tcp"
     cidr_blocks = [var.cidrblock]

  }
  egress {
     from_port = 0
     to_port = 0
    protocol = -1
     cidr_blocks = [var.cidrblock]
  }

  tags = {
    Name = var.sgname
  }
}