
resource "aws_instance" "terraform-demo"{                          # hardcoded
  ami = "${var.ami}"                                                ## Amazon Linux 
  instance_type = "${var.instance_type}"                           # variable
  vpc_security_group_ids = [aws_security_group.tf-demosg.id]          # variable / hardcoded
  #subnet_id = "subnet-0d4ba6137b4c3abdb"                          # variable / hardcoded
  subnet_id = aws_subnet.tf-demosn1.id                                 # variable
  key_name = "${var.key_name}"
  associate_public_ip_address = var.enable_public_ip               # variable

  tags = {
    Name = var.aws_instance_name                                   # variable
  }
}

