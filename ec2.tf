
resource "aws_instance" "terraform-s3"{                          # hardcoded
  ami = "${var.ami}"                                                ## Amazon Linux 
  instance_type = "${var.instance_type}"                           # variable
  vpc_security_group_ids = [data.aws_security_group.bass3sg.id]          # variable / hardcoded
  subnet_id = data.aws_subnet.bass3sn1.id                                 # variable
  key_name = "${var.key_name}"
  associate_public_ip_address = var.enable_public_ip               # variable

  tags = {
    Name = var.aws_instance_name                                   # variable
  }
}


# ============ VPC ====================

data "aws_vpc" "bass3vpc" {
  backend = "s3"
  config = {
    bucket = "${var.s3_bucket}"
    key    = "${var.s3_key}"
    region = "${var.s3_region}"
  }
    
}
# ============ SG ====================
data "aws_security_group" "bass3sg" {
  backend = "s3"
  config = {
    bucket = "${var.s3_bucket}"
    key    = "${var.s3_key}"
    region = "${var.s3_region}"
  }
}
# ============ SN ====================
data "aws_subnet" "bass3sn1" {
  backend = "s3"
  config = {
    bucket = "${var.s3_bucket}"
    key    = "${var.s3_key}"
    region = "${var.s3_region}"
  }

}
