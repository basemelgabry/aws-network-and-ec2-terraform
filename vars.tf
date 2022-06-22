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
    default     = "terraform-demo"
}

############### VPC | tf-demovpc ###############

variable "vpc_cidr_block" {
  description = "CIDR block for VPC"
  type        = string
  default     = "10.11.0.0/16"
}

variable "aws_vpc_name" {
    description = "AWS instance name"
    type        = string                          
    default     = "tf-demovpc"
}

##################### ING | tf-demoigw ########################

variable "aws_igw_name" {
    description = "AWS instance name"
    type        = string                          
    default     = "tf-demoigw" 
}

#####################  subnet | tf-demosn ##############




#################  Route Table #######################

variable "aws_route_table_name" {
    description = "AWS instance name"
    type        = string                          
    default     = "tf-demortb"
}

variable "aws_route_destination_cidr_block" {
  description = "CIDR block for aws_route_destination_cidr_block"
  type        = string
  default     = "0.0.0.0/0"
}


################### Security group | tf-demosg #####################33

variable "aws_security_group_name" {
    description = "AWS instance name"
    type        = string                          
    default     = "tf-demosg"
}
