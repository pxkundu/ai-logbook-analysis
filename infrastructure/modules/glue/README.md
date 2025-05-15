# Glue Module

Provisions an AWS Glue job for ETL processing.

## Resources
- Glue ETL job (Python 3).
- Job bookmarks enabled.

## Usage
```hcl
module "glue" {
  source      = "./modules/glue"
  job_name    = "etl-job"
  environment = "dev"
  s3_bucket   = "ai-logbook-data"
  role_arn    = "arn:aws:iam::123456789012:role/glue-role"
}
```
