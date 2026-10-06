output "parameter_arn" {
  description = "The ARN of the created SSM parameter"
  value       = aws_ssm_parameter.app_config.arn
}

output "parameter_name" {
  description = "The name of the created SSM parameter"
  value       = aws_ssm_parameter.app_config.name
}

🚀 Deployment Instructions
Initialize Terraform

Bash
terraform init
Validate Configuration

Bash
terraform validate
Plan Deployment

Bash
terraform plan
Apply Configuration

Bash
terraform apply -auto-approve
Verify in AWS CLI

Bash
aws ssm get-parameter --name "/config/app/database_url"
Cleanup / Destroy

Bash
terraform destroy -auto-approve
