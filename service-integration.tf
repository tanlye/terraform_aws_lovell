# resource "aws_sqs_queue" "sqs" {
#   name                      = "ce7-lovell2"
#   sqs_managed_sse_enabled   = true
#   delay_seconds             = 90
#   max_message_size          = 2048
#   message_retention_seconds = 86400
#   receive_wait_time_seconds = 10
# #   fifo_queue                  = true
# #   content_based_deduplication = true
# }

# resource "aws_sns_topic" "sns_topic" {
#   name = "ce7-lovell-2-topic"
# }

# resource "aws_sns_topic_subscription" "user_updates_sqs_target" {
#   topic_arn = aws_sns_topic.sns_topic.arn
#   protocol  = "sqs"
#   endpoint  = aws_sqs_queue.sqs.arn
# }

# resource "aws_sns_topic_subscription" "user_updates_sqs_target2" {
#   topic_arn = aws_sns_topic.sns_topic.arn
#   protocol  = "email"
#   endpoint  = "vell23ye@gmail.com"
# }