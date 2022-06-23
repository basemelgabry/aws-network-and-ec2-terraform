# Create many sub net
# subnet 1 = tf-demosn1
#cidr_block = "10.11.1.0/24"
# added to vpc = tf-demovpc
# tag = tf-demosn1 , public
# ======================
# subnet 2 = tf-demosn2
#cidr_block = "10.11.2.0/24"
# added to vpc = tf-demovpc
# tag = tf-demosn2 , private

resource "aws_subnet" "tf-demosn1" {
  vpc_id     = aws_vpc.tf-demovpc.id
  cidr_block = "10.11.1.0/24"

  tags = {
    Name = "tf-demosn1"
    Name = "public"
  }
}


resource "aws_subnet" "tf-demosn2" {
  vpc_id     = aws_vpc.tf-demovpc.id
  cidr_block = "10.11.2.0/24"

  tags = {
    Name = "tf-demosn2"
    Name = "private"
  }
}