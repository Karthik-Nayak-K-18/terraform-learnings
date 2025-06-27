provider "aws" {
	region = var.region
}

resource "aws_s3_bucket" "tf_state" {
	bucket = var.bucket_name

	tags = {
		Name = "Terraform state bucket"
	}
	
}


resource "aws_s3_bucket_versioning" "tf_state_versioning" {
	bucket = var.bucket_name
	  versioning_configuration {
    status = "Enabled"
  }
}


resource "aws_dynamodb_table" "tf_lock" {
	name = var.dynamodb_table_name
	billing_mode = "PAY_PER_REQUEST"
	hash_key = "LockID"
	
	attribute {
		name = "LockID"
		type = "S"
	}
	
	tags = {
		Name = "terraform lock table"
	}
}