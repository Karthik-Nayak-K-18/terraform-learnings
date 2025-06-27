resource "aws_instance" "my_ec2" {
	for_each = var.instance_name_map
	ami = var.ami_id
	instance_type = var.instance_type
	key_name = var.key_name
	subnet_id = var.subnet_id
	vpc_security_group_ids = var.vpc_security_group_ids
	user_data =  file("${path.module}/init.sh")
	
	tags = {
		Name = "${terraform.workspace}-${each.value}"
	}
	

}