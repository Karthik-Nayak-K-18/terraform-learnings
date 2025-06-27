output "vpc_id" {
	description = "vpc id to be displayed"
	value = aws_vpc.main.id
}

output "public_subnet_id" {
	description = "subnet id to be displayed"
	value = aws_subnet.public.id
}

output "igw_id" {
  description = "The ID of the Internet Gateway"
  value       = aws_internet_gateway.igw.id
}

output "route_table_id" {
  description = "The ID of the public route table"
  value       = aws_route_table.public.id
}

output "sg_id" {
  description = "vpc sg value"
  value = aws_security_group.my_sg.id
}
