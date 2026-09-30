variable "aws_region" {
  description = "AWS region for deployment"
  type        = string
  default     = "us-east-1"
}

variable "iam_user_name" {
  description = "The name of the IAM user to be created"
  type        = string
  default     = "iamuser_james"
}
