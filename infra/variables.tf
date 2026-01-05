// infra/variables.tf
variable "aws_region" {
  type        = string
  description = "AWS region"
  default     = "eu-central-1"
}

variable "prefix" {
  type        = string
  description = "Prefix for all resources"
  default     = "mykola"
}

variable "image" {
  type        = string
  description = "Full ECR image URI, e.g. <account>.dkr.ecr.eu-central-1.amazonaws.com/ip-test-app:1.0"
}

variable "cpu" {
  type        = string
  description = "Fargate CPU units"
  default     = "256"
}

variable "memory" {
  type        = string
  description = "Fargate memory (MiB)"
  default     = "512"
}

variable "desired_count" {
  type        = number
  description = "Number of tasks"
  default     = 1
}
