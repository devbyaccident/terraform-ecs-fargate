# logs.tf

# Set up CloudWatch group and log stream and retain logs for 30 days
resource "aws_cloudwatch_log_group" "audition_log_group" {
  name              = "/audition-app"
  retention_in_days = 30

  tags = {
    Name = "audition-log-group"
  }
}

resource "aws_cloudwatch_log_stream" "audition_log_stream" {
  name           = "audition-log-stream"
  log_group_name = aws_cloudwatch_log_group.audition_log_group.name
}

