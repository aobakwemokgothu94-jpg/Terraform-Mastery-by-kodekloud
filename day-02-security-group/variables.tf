variable "aws_region" {
  description = "AWS region for deployment"
  type        = string
  default     = "us-east-1"
}

variable "security_group_name" {
  description = "Name of the security group"
  type        = string
  default     = "allow_web_traffic"
}

variable "allowed_http_cidr" {
  description = "CIDR block allowed for HTTP access"
  type        = list(string)
  default     = ["0.0.0.0/0"]
}

variable "allowed_ssh_cidr" {
  description = "CIDR block allowed for SSH access"
  type        = list(string)
  default     = ["0.0.0.0/0"]
}
