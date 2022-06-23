
resource "aws_instance" "terraform-datasource"{                          # hardcoded
  ami = "${var.ami}"                                                ## Amazon Linux 
  instance_type = "${var.instance_type}"                           # variable
  vpc_security_group_ids = [data.aws_security_group.tf-demosg.id]          # variable / hardcoded
  #subnet_id = "subnet-0d4ba6137b4c3abdb"                          # variable / hardcoded
  subnet_id = data.aws_subnet.tf-demosn1.id                                 # variable
  key_name = "${var.key_name}"
  associate_public_ip_address = var.enable_public_ip               # variable

  tags = {
    Name = var.aws_instance_name                                   # variable
  }
}


# ============ VPC ====================

data "aws_vpc" "tf-demovpc" {
    filter {
      name = "tag:Name"
      values = ["tf-demovpc"]
    }
}
# ============ SG ====================
data "aws_security_group" "tf-demosg" {
  filter {
      name = "tag:Name"
      values = ["tf-demosg"]
    }

}
# ============ SN ====================
data "aws_subnet" "tf-demosn1" {
  filter {
      name = "tag:Name"
      values = ["public"]
    }

}
