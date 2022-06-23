# Create many sub net
# subnet 1 = bass3sn1
#cidr_block = "10.11.1.0/24"
# added to vpc = bass3vpc
# tag = bass3sn1 , public
# ======================
# subnet 2 = bass3sn2
#cidr_block = "10.11.2.0/24"
# added to vpc = bass3vpc
# tag = bass3sn2 , private

resource "aws_subnet" "bass3sn1" {
  vpc_id     = aws_vpc.bass3vpc.id
  cidr_block = "10.11.1.0/24"

  tags = {
    TagName = "bass3sn1"
    Name = "public"
  }
}


resource "aws_subnet" "bass3sn2" {
  vpc_id     = aws_vpc.bass3vpc.id
  cidr_block = "10.11.2.0/24"

  tags = {
    TagName = "bass3sn2"
    Name = "private"
  }
}