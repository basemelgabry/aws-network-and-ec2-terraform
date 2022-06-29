
resource "aws_instance" "terraform-s3"{                          # hardcoded
  ami = "${var.ami}"                                                ## Amazon Linux 
  instance_type = "${var.instance_type}"                           # variable
  #vpc_security_group_ids = data.terraform_remote_state.aws_security_group.bass3sg.id        # variable / hardcoded
  #subnet_id = data.terraform_remote_state.network_state.public_subnet_id_root
  /*          data.terraform_remote_state.aws_subnet.bass3sn1.id     */                            # variable
  #subnet_ids = data.terraform_remote_state.bass3vpc.subnet_id
  #vpc_security_group_ids = data.terraform_remote_state.bass3vpc.outputs.aws_security_group.ids 

  vpc_security_group_ids = data.terraform_remote_state.basnetwork.outputs.vpc_security_group_id     
  subnet_id = data.terraform_remote_state.basnetwork.outputs.subnet_id #aws_subnet.task3-sn1-pb.id 



  key_name = "${var.key_name}"
  associate_public_ip_address = var.enable_public_ip               # variable

  tags = {
    Name = var.aws_instance_name                                   # variable
  }
}


#data.terraform_remote_state.network_state.public_subnet_id_root
#subnet_id = data.terraform_remote_state.basnetwork.outputs.subnet_id


# ============ VPC ====================
# Vpc in state file in s3
data "terraform_remote_state" "basnetwork" {
#data "aws_vpc" "bass3vpc" {
  backend = "s3"
  config = {
    bucket = "${var.s3_bucket}"
    key    = "${var.s3_key}"
    region = "${var.s3_region}"
  }
    
}
# # ============ SG ====================
# data "aws_security_group" "bass3sg" {
#   backend = "s3"
#   config {
#     bucket = "${var.s3_bucket}"
#     key    = "${var.s3_key}"
#     region = "${var.s3_region}"
#   }
# }
# # ============ SN ====================
# data "aws_subnet" "bass3sn1" {
#   backend = "s3"
#   config = {
#     bucket = "${var.s3_bucket}"
#     key    = "${var.s3_key}"
#     region = "${var.s3_region}"
#   }

# }


