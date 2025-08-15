# Terraform Remote State with S3 and DynamoDB

This mini project demonstrates how to configure **remote state management** in Terraform using:

- AWS S3 (for storing state file)
- DynamoDB (for state locking)

---

## Project Structure


---

## Steps to Use This Setup

### 1.Edit Variables (if needed)

Edit `variables.tf` to match your bucket and table naming.

### 2.Disable Backend (temporarily)

Before initializing Terraform for the first time, comment out the backend block in `main.tf`:

```hcl
# terraform {
#   backend "s3" {
#     bucket         = "your-bucket-name"
#     key            = "global/s3/terraform.tfstate"
#     region         = "us-east-1"
#     dynamodb_table = "your-table-name"
#     encrypt        = true
#   }
# }

