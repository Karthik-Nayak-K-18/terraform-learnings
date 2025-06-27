data "aws_ami" "ubuntu_22" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"]
}


locals {
  ec2_instances = {
    "app1" = "ec2-1"
    "app2" = "ec2-2"
    "app3" = "ec2-3"
  }
}

module "ec2_instance" {
  source                 = "./modules/ec2"
  instance_name_map      = local.ec2_instances
  subnet_id              = module.vpc.public_subnet_id
  ami_id                 = data.aws_ami.ubuntu_22.id
  instance_type          = var.instance_type
  key_name               = var.key_name
  vpc_security_group_ids = [module.vpc.sg_id]
  region                 = var.region
}

module "vpc" {
  source             = "./modules/vpc"
  vpc_cidr           = var.vpc_cidr
  public_subnet_cidr = var.public_subnet_cidr
  az                 = var.availability_zone
  name_prefix        = var.name_prefix
}