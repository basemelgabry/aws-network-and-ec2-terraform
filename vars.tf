# variable "ami" {
# 	default = "ami-0cff7528ff583bf9a"
# }

# variable "instance_type" {
#     description = "Instance type t2.micro"
#     type        = string                            # EX strung - number - bool - list - set - ,ap
#     default     = "t2.micro"                        # variable default volue 
# 	}

# variable "key_name" {
#     description = "KEY Name"
#     type        = string                          
#     default     = "BAS-key"

# }

# variable "enable_public_ip" {
#   description = "Enable  associate public IP address"
#   type        = bool
#   default     = true
# }

# variable "aws_instance_name" {
#     description = "AWS instance name"
#     type        = string                          
#     default     = "terraform-demo"
# }

############### VPV | bass3vpc ###############

variable "vpc_cidr_block" {
  description = "CIDR block for VPC"
  type        = string
  default     = "10.11.0.0/16"
}

variable "aws_vpc_name" {
    description = "AWS instance name"
    type        = string                          
    default     = "bass3vpc"
}

##################### ING | bass3igw ########################

variable "aws_igw_name" {
    description = "AWS instance name"
    type        = string                          
    default     = "bass3igw" 
}

#####################  subnet | bass3sn ##############




#################  Route Table #######################

variable "aws_route_table_name" {
    description = "AWS instance name"
    type        = string                          
    default     = "bass3rtb"
}

variable "aws_route_destination_cidr_block" {
  description = "CIDR block for aws_route_destination_cidr_block"
  type        = string
  default     = "0.0.0.0/0"
}


################### Security group | bass3sg #####################33

variable "aws_security_group_name" {
    description = "security group name"
    type        = string                          
    default     = "bass3sg"
}