output vpc_id {
  description = "VPC ID"
  value       = aws_vpc.bass3vpc.id
}

output vpc_name {
  description = "VPC name"
  value       = var.aws_vpc_name
}

output vpc_cidr_bock {
  description = "VPC CIDR Block of VPC"
  value       = var.vpc_cidr_block
}

output vpc_security_group_id {
  description = "description"
  value       = [aws_security_group.bass3sg.id]
}

output subnet_id {
  description = "description"
  value       = aws_subnet.bass3sn1.id
}
