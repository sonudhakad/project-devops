
resource "aws_sns_topic" "demo" {
  name              = var.name
  kms_master_key_id = "alias/aws/sns"
  tags              = var.tags
}

resource "aws_sns_topic_subscription" "sns-topic" {
  topic_arn = aws_sns_topic.demo.arn
  protocol  = "email"
}
