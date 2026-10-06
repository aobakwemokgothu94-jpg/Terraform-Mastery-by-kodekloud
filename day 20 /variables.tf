variable "aws_region" {
  type        = string
  default     = "us-east-1"
  description = "AWS region for deployment"
}

variable "parameter_name" {
  type        = string
  default     = "/config/app/database_url"
  description = "The name of the SSM parameter"
}

variable "parameter_type" {
  type        = string
  default     = "String"
  description = "The type of parameter (String, StringList, SecureString)"
}

variable "parameter_value" {
  type        = string
  default     = "postgres://[db.example.com:5432/appdb](https://db.example.com:5432/appdb)"
  description = "The value of the parameter"
}
