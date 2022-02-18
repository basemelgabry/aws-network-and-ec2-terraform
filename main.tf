terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-west-1"
  access_key = var.access_key_var                                   # our-access-key
  secret_key = var.secret_key_var              # our-secret-key
}

# Terraform Output Values
output "my_console_output" {
  value = aws_instance.terraform-demo.public_ip
} 


# aws_vpc.tf-demovpc: Refreshing state... [id=vpc-0539f1032e3bd0b60]
# aws_route_table.tf-demortb: Refreshing state... [id=rtb-0d7e489960c7cba34]
# aws_internet_gateway.tf-demoigw: Refreshing state... [id=igw-02a1fe04b35a7f5d9]
# aws_subnet.tf-demosn2: Refreshing state... [id=subnet-0ebf6ba8834fdebe9]
# aws_subnet.tf-demosn1: Refreshing state... [id=subnet-03abe77eddb6b673f]
# aws_security_group.tf-demosg: Refreshing state... [id=sg-0002ae49d294ca168]
# aws_route_table_association.b: Refreshing state... [id=rtbassoc-0a271cf0fea7bcc75]
# aws_route.way-to-igw: Refreshing state... [id=r-rtb-0d7e489960c7cba341080289494]
# #aws_route_table_association.a: Refreshing state... [id=rtbassoc-07adf03aa8cea07e7]
# aws_instance.terraform-demo: Refreshing state... [id=i-01552dde8ab74488b]

# #  terraform import aws_vpc.tf-demovpc2 vpc-0539f1032e3bd0b60
# #  terraform import aws_internet_gateway.tf-demoigw2 igw-02a1fe04b35a7f5d9
# #  terraform import aws_subnet.tf-demosn2public subnet-03abe77eddb6b673f
# #  terraform import aws_route_table.tf-demortb2 rtb-0d7e489960c7cba34
# #  terraform import aws_subnet.tf-demosn3private subnet-0ebf6ba8834fdebe9
# #  terraform import aws_security_group.tf-demosg2 sg-0002ae49d294ca168
# #     terraform import aws_route_table_association.a subnet-03abe77eddb6b673f/rtb-0d7e489960c7cba34
# #     terraform import aws_route.way-to-igw r-rtb-0d7e489960c7cba341080289494
# #     terraform import aws_route_table_association.b rtbassoc-0a271cf0fea7bcc75
# # terraform import aws_instance.terraform-demo2 i-01552dde8ab74488b
