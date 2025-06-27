output "vpc_id" {
  description = "vpc id to be displayed"
  value       = module.vpc.vpc_id
}

output "public_subnet_id" {
  description = "subnet id to be displayed"
  value       = module.vpc.public_subnet_id
}

output "public_ip" {
  description = "Public IP of the EC2 instance"
  value       = module.ec2_instance.public_ip
}

output "instance_id" {
  description = "EC2 Instance ID"
  value       = module.ec2_instance.instance_id
}
