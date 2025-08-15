variable "aws_region" {
	 description = "AWS region"
         type        = string
         default     = "us-east-1"
}

variable "bucket_name" {
  description = "s3-backend-25jul2025"
  type        = string
}

variable "dynamodb_table_name" {
  description = "state_lock_dynamodb_table"
  type        = string
}
