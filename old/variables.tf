variable "vpc_id" {
  description = "The ID of the VPC where resources will be created"
  type        = string
}

variable "aws_region" {
  description = "AWS region to deploy Neptune"
  default     = "ca-west-1"
}
