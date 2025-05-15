variable "environment" {
  description = "Deployment environment"
  type        = string
}

variable "s3_bucket" {
  description = "S3 bucket for Textract input"
  type        = string
}

variable "lambda_arn" {
  description = "ARN of the Lambda function for Textract"
  type        = string
  default     = ""
}

variable "role_arn" {
  description = "IAM role ARN for Textract"
  type        = string
}
