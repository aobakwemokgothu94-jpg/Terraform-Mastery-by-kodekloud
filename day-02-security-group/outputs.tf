output "security_group_id" {
  description = "The ID of the Security Group"
  value       = aws_security_group.allow_web.id
}

output "security_group_arn" {
  description = "The ARN of the Security Group"
  value       = aws_security_group.allow_web.arn
}

output "security_group_name" {
  description = "The name of the Security Group"
  value       = aws_security_group.allow_web.name
}
