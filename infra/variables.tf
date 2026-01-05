// infra/variables.tf
variable "aws_region" {
  type    = string
  default = "eu-central-1"
}

variable "prefix" {
  type    = string
  default = "mykola"
}

variable "image" {
  type        = string
  description = "Full ECR image URI with tag, e.g. 123.dkr.ecr.eu-central-1.amazonaws.com/ip-test-app:1.0"
}

variable "cpu" {
  type    = string
  default = "256"
}

variable "memory" {
  type    = string
  default = "512"
}

variable "desired_count" {
  type    = number
  default = 1
}
