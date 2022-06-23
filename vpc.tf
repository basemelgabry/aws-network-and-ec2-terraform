
# Create a VPC 
#--name tf-demovpc
#-- cidr_block = "10.11.0.0/16"
#-- tag = tf-demovpc

resource "aws_vpc" "tf-demovpc" {         # hardcoded
  cidr_block = var.vpc_cidr_block         # variable

  tags = {
    Name = var.aws_vpc_name               # variable
  }
}