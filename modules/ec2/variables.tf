variable "region" {
	description = "region of aws instance"
	type = string
}

variable "instance_type" {
	description = "aws instance type"
	type = string
	default = "t2.micro"
}

variable "instance_name_map" {
	description = "map instance keys to names"
	type = map(string)
}

variable "key_name" {
	description = "key pair name"
	type = string
}

variable "ami_id" {
  description = "AMI ID"
  type        = string
}

variable "subnet_id" {
	description = "subnet id of public"
	type = string
}

variable "vpc_security_group_ids" {
  description = "Security Group IDs"
  type        = list(string)
}
