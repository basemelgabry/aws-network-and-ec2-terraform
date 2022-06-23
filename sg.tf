# Security Group
resource "aws_security_group" "tf-demosg" {
  name        = "tf-demosg"
  description = "Allow https inbound traffic"
  vpc_id      = aws_vpc.tf-demovpc.id

  ingress {
    description      = "SSH from VPC"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = var.aws_security_group_name                # variable
  }
}