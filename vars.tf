variable "ami" {
	default = "ami-0cff7528ff583bf9a"
}

variable "instance_type" {
    description = "Instance type t2.micro"
    type        = string                            # EX strung - number - bool - list - set - ,ap
    default     = "t2.micro"                        # variable default volue 
	}

variable "key_name" {
    description = "KEY Name"
    type        = string                          
    default     = "BAS-key"

}

variable "enable_public_ip" {
  description = "Enable  associate public IP address"
  type        = bool
  default     = true
}

variable "aws_instance_name" {
    description = "AWS instance name"
    type        = string                          
    default     = "terraform-s3"
}

################# AWS credentials  #######################

variable "access_key_var" {
    description = "AWS access key"
    type        = string                          
  #  default     = "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX"
    default     = ""
}

variable "secret_key_var" {
  description = "AWS secret_key "
  type        = string
  # default     = "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX"
  default     = ""

}

#========================== S3 ======================

variable "s3_bucket" {
    description = "s3 Bucket name"
    type        = string                          
    default     = "bas-demobucket"
}

variable "s3_key" {
    description = "s3 Bucket Key"
    type        = string                          
    default     = "demo/aws-infrastructure-s3-23622/vpc-resource/terraform.tfstate"
}

variable "s3_region" {
    description = "s3 Bucket region"
    type        = string                          
    default     = "us-east-1"
}