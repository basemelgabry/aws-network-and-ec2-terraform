

# Create intenet gateway --name tf-demoigw
# added Vpc = samvpv
# tag = tf-demoigw


resource "aws_internet_gateway" "tf-demoigw" {
  vpc_id = aws_vpc.tf-demovpc.id

  tags = {
    Name = var.aws_igw_name                       ## variable
  }
}