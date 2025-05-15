# Infrastructure

This directory contains Terraform configurations for provisioning AWS resources for the AI Logbook Analysis system.

## Structure
- **modules/**: Reusable modules for S3, Lambda, Glue, Textract, RDS, and security.
- **environments/**: Environment-specific configurations (dev, staging, prod).
- **main.tf**: Root configuration calling modules.
- **variables.tf**: Global variables.
- **outputs.tf**: Outputs for resource references.

## Setup
1. Install Terraform >= 1.5.0.
2. Configure AWS credentials.
3. Initialize: `terraform init`.
4. Apply: `terraform apply -var-file=environments/dev/variables.tfvars`.

## State Management
- Backend: S3 (`ai-logbook-terraform-state`) with DynamoDB locking (`terraform-locks`).
