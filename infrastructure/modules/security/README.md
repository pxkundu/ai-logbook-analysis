# Security Module

Provisions IAM roles and KMS key for secure operations.

## Resources
- IAM roles for Lambda, Glue, and Textract.
- KMS key for encryption.

## Usage
```hcl
module "security" {
  source      = "./modules/security"
  environment = "dev"
}
```
