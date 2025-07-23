#Mini Project 03: Launch EC2 using Terraform

This project uses Terraform to launch a basic Free Tier EC2 instance on AWS and outputs the instance Id & public IP.

---

##Files

- `main.tf` – defines provider and EC2 resource
- `variables.tf` – stores region, AMI ID, instance type
- `outputs.tf` – prints the instance Id & public IP

---

##Setup Instructions

1. Ensure you have Terraform installed.
2. Configure AWS CLI with IAM credentials.
3. Initialize Terraform:

```bash
terraform init
terraform plan
terraform apply

