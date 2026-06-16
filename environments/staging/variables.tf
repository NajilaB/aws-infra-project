variable "aws_region" {
    description = "AWS region"
    type        = string
    default     = "us-east-1"
}

variable "environment" {
    description = "Environment name"
    type        = string
    default     = "staging"
}

variable "vpc_cidr" {
    description = "CIDR block for VPC"
    type        = string
    default     = "10.1.0.0/16"
}

variable "instance_type" {
    description = "EC2 instance type"
    type        = string
    default     = "t3.small"
}

variable "ami_id" {
    description = "AMI ID for EC2 instance"
    type        = string
}