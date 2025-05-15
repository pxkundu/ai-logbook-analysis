resource "aws_glue_job" "etl_job" {
  name     = "${var.job_name}-${var.environment}"
  role_arn = var.role_arn

  command {
    name            = "glueetl"
    script_location = "s3://${var.s3_bucket}/scripts/etl.py"
    python_version  = "3"
  }

  default_arguments = {
    "--TempDir"             = "s3://${var.s3_bucket}/temp"
    "--job-bookmark-option" = "job-bookmark-enable"
  }

  max_retries = 1
  timeout     = 60

  tags = {
    Name        = "ai-logbook-glue"
    Environment = var.environment
  }
}
