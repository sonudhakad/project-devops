
resource "aws_sns_topic" "demo" {
  name              = "sentinel"
  kms_master_key_id = "alias/aws/sns"
  #tags              = var.tags
}

