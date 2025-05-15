provider "aws" {
  region = var.aws_region
}

module "s3" {
  source = "./modules/s3"
  bucket_name = var.bucket_name
}

module "lambda" {
  source = "./modules/lambda"
  function_name = "ingestion"
}

variable "aws_region" {
  default = "us-east-1"
}

variable "bucket_name" {
  default = "ai-logbook-data"
}
