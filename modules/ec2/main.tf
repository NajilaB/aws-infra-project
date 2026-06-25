
resource "aws_instance" "web" {
	ami            = var.ami_id
	instance_type  = var.instance_type
	subnet_id      = var.subnet_id
	user_data 	   = var.user_data
	tags 		   = merge(var.tags, {
	Name 		   = "${var.environment}-web-server"
	Environment    = var.environment
	})
}