
output "instance_id" {
	value       = aws_instance.ec2.id
	description = "id of the instance"
} 


output "public_ip" {
        value       = aws_instance.ec2.public_ip
        description = "public ip of the instance"
}

