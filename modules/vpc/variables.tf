variable "vpc_cidr" {
	description = "CIDR block for VPC"
	type        = string
}

variable "environment" {
	description = "Environment name"
	type        = string
}

variable "tags" {
	description = "Common tags for all resources"
	type    = map(string)
	default = {}
}