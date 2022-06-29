# AWS ec2 state file ft for aws VPC infrastructure terraform

1 - Create AWS infrastructure by Terraform and save terraform.tfstate to S3 bucket
Branch: aws-infrastructure-s3-23622
==================================
2 - Create EC2 by Terraform auto attached to infrastructure VPC - SN - SG ( has created in the first step )
Creation :

git clone -b aws-ec2-s3-23622 https://github.com/basemelgabry/aws-network-and-ec2-terraform.gitterraform initterraform planterraform apply -auto-approve
Output:
terraform.tfstate  SAVE in :
S3 bucket :bucket = "bas-demobucket"key    = "demo/aws-infrastructure-s3-23622/ec2-resource/terraform.tfstate"region = "us-east-1"
===================================
