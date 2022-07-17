

output "vpc_id" {
  description = "ID of the VPC"
  value       = aws_vpc.vpc.id
}

output "subnet_id" {
  description = "ID of the VPC subnet"
  value       = aws_subnet.public_subnet.*.id
}

output "sg_id" {
  description = "Default security group"
  value       = aws_security_group.default.*.id
}