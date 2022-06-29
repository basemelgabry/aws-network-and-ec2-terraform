# aws infrastructure terraform
# Create AWS infrastructure - save terraform.tfstate to S3 bucket  use it to create EC2s
# ========================================================
1 - Create AWS infrastructure by Terraform and save terraform.tfstate to S3 bucket
Creation :
git clone -b aws-infrastructure-s3-23622  https://github.com/basemelgabry/aws-network-and-ec2-terraform.gitterraform initterraform planterraform apply -auto-approve
-----------------------
Output:
terraform.tfstate  SAVE in :
S3 bucket :bucket = "bas-demobucket"key    = "demo/aws-infrastructure-s3-23622/vpc-resource/terraform.tfstate"region = "us-east-"========================================================================================
2 - Create EC2 by Terraform auto attached to infrastructure VPC - SN - SG ( has created in the first step )






# ========================================================
#Save TF state in AWS S3
output.tf
#
git checkout -b aws-infrastructure-s3-23622
git status
git branch --all
git status
git add –all
git pull origin  aws-infrastructure-s3-23622
git branch
git add .
git status
git commit -m "upload tf files"
git push --set-upstream origin aws-infrastructure-s3-23622
