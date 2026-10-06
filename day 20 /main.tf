# Day 20: Create SSM Parameter Using Terraform

## 📌 Overview
This module provisions an **AWS Systems Manager (SSM) Parameter** using Terraform. Storing configuration data and secrets in AWS Systems Manager Parameter Store allows for centralized management and secure access across your cloud infrastructure.

## 🏗️ Architecture & Resources
- **Resource**: `aws_ssm_parameter`
- **Type**: `String` (or `SecureString` for sensitive values)
- **Use Case**: Store application configuration variables, database connection strings, or environment settings centrally.

---

## 🛠️ Terraform Code

### `main.tf`
```hcl
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = var.aws_region
}

resource "aws_ssm_parameter" "app_config" {
  name        = var.parameter_name
  description = "Application configuration parameter managed by Terraform"
  type        = var.parameter_type
  value       = var.parameter_value

  tags = {
    Environment = "Dev"
    ManagedBy   = "Terraform"
  }
}
