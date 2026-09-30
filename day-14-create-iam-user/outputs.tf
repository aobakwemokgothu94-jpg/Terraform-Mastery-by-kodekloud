output "iam_user_name" {
  description = "The name of the created IAM user"
  value       = aws_iam_user.iam_user.name
}

output "iam_user_arn" {
  description = "The ARN of the created IAM user"
  value       = aws_iam_user.iam_user.arn
}

output "iam_user_unique_id" {
  description = "The unique ID assigned to the IAM user"
  value       = aws_iam_user.iam_user.unique_id
}
