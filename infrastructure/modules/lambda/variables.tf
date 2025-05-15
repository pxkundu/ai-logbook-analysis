variable "function_name" {
  description = "Name of the Lambda function"
  type        = string
}

variable "environment" {
  description = "Deployment environment"
  type        = string
}

variable "s3_bucket" {
  description = "S3 bucket for Lambda code"
  type        = string
}

variable "s3_key" {
  description = "S3 key for Lambda code"
  type        = string
}

variable "role_arn" {
  description = "IAM role ARN for Lambda"
  type        = string
}
