variable "vpc_cidr" {
	description = "vpc cidr block"
	type = string
}

variable "public_subnet_cidr" {
	description = "public subnet cidr block"
	type = string
}

variable "az" {
	description = "availability zone for public subnet"
	type = string
}

variable "name_prefix" {
  description = "Prefix for naming resources"
  type        = string
}