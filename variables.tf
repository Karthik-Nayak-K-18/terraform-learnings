variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "public_subnet_cidr" {
  description = "CIDR block for the public subnet"
  type        = string
  default     = "10.0.1.0/24"
}

variable "availability_zone" {
  description = "Availability Zone for the subnet"
  type        = string
  default     = "us-east-1a"
}

variable "name_prefix" {
  description = "Prefix for resource naming"
  type        = string
  default     = "tf-bootcamp"
}

variable "region" {
	description = "Specify the region of the ec2 instance"
	type = string
}

variable "instance_type" {
	description = "instance type of ec2"
	type = string
	default = "t2.micro"
}

variable "instance_name" {
	description = "Name tag of the ec2 instance"
	type = string
}

variable "key_name" {
	description = "key pair name for ec2 ssh"
	type = string
}