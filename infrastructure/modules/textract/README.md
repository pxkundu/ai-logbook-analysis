# Textract Module

Configures S3 bucket notifications for Textract processing.

## Resources
- S3 bucket notification for Lambda trigger.

## Usage
```hcl
module "textract" {
  source      = "./modules/textract"
  environment = "dev"
  s3_bucket   = "ai-logbook-data"
  role_arn    = "arn:aws:iam::123456789012:role/textract-role"
}
```
