# Monitoring Module

Provisions CloudWatch alarms and SNS topic for monitoring.

## Resources
- CloudWatch alarm for Lambda errors.
- SNS topic for notifications.

## Usage
```hcl
module "monitoring" {
  source              = "./modules/monitoring"
  environment         = "dev"
  lambda_function_name = "ingestion-dev"
}
```
