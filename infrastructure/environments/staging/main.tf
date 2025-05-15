module "s3" {
  source      = "../../modules/s3"
  bucket_name = var.bucket_name
  environment = var.environment
  kms_key_id  = module.security.kms_key_id
}

module "lambda" {
  source            = "../../modules/lambda"
  function_name     = "ingestion"
  environment       = var.environment
  s3_bucket         = module.s3.bucket_name
  s3_key            = "ingestion.zip"
  role_arn          = module.security.lambda_role_arn
}

module "glue" {
  source            = "../../modules/glue"
  job_name          = "etl-job"
  environment       = var.environment
  s3_bucket         = module.s3.bucket_name
  role_arn          = module.security.glue_role_arn
}

module "textract" {
  source            = "../../modules/textract"
  environment       = var.environment
  s3_bucket         = module.s3.bucket_name
  lambda_arn        = module.lambda.function_arn
  role_arn          = module.security.textract_role_arn
}

module "rds" {
  source            = "../../modules/rds"
  db_name           = "logbookdb"
  environment       = var.environment
  instance_class    = var.rds_instance_class
  master_username   = var.rds_master_username
  master_password   = var.rds_master_password
}

module "security" {
  source      = "../../modules/security"
  environment = var.environment
}
