terraform {
	required_providers {
		aws = {
			source = "hashicorp/aws"
			version = "~> 5.0"
		}
	}
}


provider "aws" {
	region = var.aws_region
}


resource "aws_s3_bucket" "terraform_state" {
	bucket = var.bucket_name


	versioning {
		enabled = true
	}

	tags = {
		Name = "Terraform Remote State Bucket"
	}
}


resource "aws_dynamodb_table" "terraform_lock" {
	
	name         = var.dynamodb_table_name
	billing_mode = "PAY_PER_REQUEST"
	hash_key     = "LockID"


	attribute {
		
		name = "LockID"
                type = "S"
	}


	tags = {
		
		Name = "Terraform State Lock Table"
	}
}


terraform {
  backend "s3" {
    bucket         = "s3-backend-25jul2025"
    key            = "global/s3/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "state_lock_dynamodb_table"
    encrypt        = true
  }
}

