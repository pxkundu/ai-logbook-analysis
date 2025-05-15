# S3 Module

Provisions an S3 bucket for storing logbook data.

## Resources
- S3 bucket with encryption (KMS).
- Public access blocked.
- Ownership controls.

## Usage
```hcl
module "s3" {
  source      = "./modules/s3"
  bucket_name = "ai-logbook-data"
  environment = "dev"
}
```
