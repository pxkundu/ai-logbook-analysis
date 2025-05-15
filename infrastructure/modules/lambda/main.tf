resource "aws_lambda_function" "function" {
  function_name = "${var.function_name}-${var.environment}"
  s3_bucket      = var.s3_bucket
  s3_key        = var.s3_key
  handler       = "main.handler"
  runtime       = "python3.9"
  role          = var.role_arn

  environment {
    variables = {
      ENVIRONMENT = var.environment
      BUCKET_NAME = var.s3_bucket
    }
  }

  tracing_config {
    mode = "Active"
  }

  tags = {
    Name        = "ai-logbook-lambda"
    Environment = var.environment
  }
}

resource "aws_lambda_permission" "s3_trigger" {
  statement_id  = "AllowS3Invoke"
  action        = "lambda:InvokeFunction"
  function_name = aws_lambda_function.function.function_name
  principal     = "s3.amazonaws.com"
  source_arn    = "arn:aws:s3:::${var.s3_bucket}/*"
}
