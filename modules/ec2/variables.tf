variable "user_data" {
	description = "Bootstrap script for EC2"
	type		= string
	default     = ""
}
variable "instance_type" {
    description = "EC2 instance type"
}
variable "ami_id"{
    description = "AMI ID for EC2 instance"
    type        = string

    }
variable "environment" {
    description = "Environment name"
     type       = string
}
variable "subnet_id" {
    description = "Subnet ID to launch EC2 in"
    type        = string
}

variable "tags" {
    description = "Common tags for all resources"
    type        = map(string)
    default     = {}
}