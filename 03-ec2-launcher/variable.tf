variable "aws_region" {
	type        = string
	default     = "us-east-1"
	description = "region where instance to be depolyment"
}

variable "ami_id" {
        type        = string
        default     = "ami-0cbbe2c6a1bb2ad63"
        description = "ami id of the instance"
}


variable "instance_type" {
        type        = string
        default     = "t2.micro"
        description = "free instance"
}


variable "instance_name" {
        type        = string
        default     = "terraform_ec2"
        description = "Name of instance"
}

