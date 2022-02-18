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


