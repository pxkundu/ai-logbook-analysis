resource "aws_cloudwatch_metric_alarm" "lambda_errors" {
  alarm_name          = "lambda-errors-${var.environment}"
  comparison_operator = "GreaterThanThreshold"
  evaluation_periods  = 1
  metric_name         = "Errors"
  namespace           = "AWS/Lambda"
  period              = 300
  statistic           = "Sum"
  threshold           = 1
  alarm_actions       = [var.sns_topic_arn]
  dimensions = {
    FunctionName = var.lambda_function_name
  }

  tags = {
    Name        = "ai-logbook-alarm"
    Environment = var.environment
  }
}

resource "aws_sns_topic" "notifications" {
  name = "logbook-notifications-${var.environment}"

  tags = {
    Name        = "ai-logbook-sns"
    Environment = var.environment
  }
}
