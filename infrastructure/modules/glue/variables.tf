variable "job_name" {
  description = "Name of the Glue job"
  type        = string
}

variable "environment" {
  description = "Deployment environment"
  type        = string
}

variable "s3_bucket" {
  description = "S3 bucket for Glue scripts"
  type        = string
}

variable "role_arn" {
  description = "IAM role ARN for Glue"
  type        = string
}
