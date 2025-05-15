resource "aws_s3_bucket_notification" "textract_trigger" {
  bucket = var.s3_bucket

  lambda_function {
    lambda_function_arn = var.lambda_arn
    events             = ["s3:ObjectCreated:*"]
    filter_prefix      = "input/"
  }
}
