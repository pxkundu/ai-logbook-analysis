# Lambda Module

Provisions an AWS Lambda function for processing logbook data.

## Resources
- Lambda function (Python 3.9).
- S3 trigger permission.
- X-Ray tracing enabled.

## Usage
```hcl
module "lambda" {
  source        = "./modules/lambda"
  function_name = "ingestion"
  environment   = "dev"
  s3_bucket     = "ai-logbook-data"
  s3_key        = "ingestion.zip"
  role_arn      = "arn:aws:iam::123456789012:role/lambda-role"
}
```
