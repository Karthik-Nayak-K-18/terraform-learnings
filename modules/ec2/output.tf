output "public_ip" {
  description = "Public IP of the EC2 instance"
  value       =  {for k, instance in aws_instance.my_ec2 : k => instance.public_ip}
}

output "private_ip" {
  description = "Private IP of the EC2 instance"
  value       = {for k, instance in aws_instance.my_ec2 : k => instance.private_ip}
}

output "instance_id" {
  description = "EC2 Instance ID"
  value       = {for k, instance in aws_instance.my_ec2 : k => instance.id}
}
