
#resource "aws_instance" "web" {
#	ami            = var.ami_id
#	instance_type  = var.instance_type
#	subnet_id      = var.subnet_id
#	user_data 	   = var.user_data
#	tags 		   = merge(var.tags, {
#	Name 		   = "${var.environment}-web-server"
#	Environment    = var.environment
#	})
#}
resource "aws_security_group" "web" {
	name			= "${var.environment}-web-sg"
	description		=  "Allow HTTP and SSH"
	vpc_id			=  var.vpc_id

	ingress {
		from_port 	= 80
		to_port  	= 80
		protocol  	= "tcp"
		cidr_blocks = ["0.0.0.0/0"]

	}

	ingress {
		from_port 	= 22
		to_port  	= 22
		protocol  	= "tcp"
		cidr_blocks = [var.vpc_cidr]

	}

	egress {
		from_port 	= 0
		to_port  	  = 0
		protocol  	= "-1"
		cidr_blocks = ["0.0.0.0/0"]
	
	}

	tags   = merge(var.tags, {
		Name = "${var.environment}-web-sg"
	})

}

resource "aws_instance" "web" {

	ami            = var.ami_id
	instance_type  = var.instance_type
	subnet_id      = var.subnet_id
	vpc_security_group_ids = [aws_security_group.web.id]
	user_data 	   = var.user_data


	tags 		   			 = merge(var.tags, {
		Name 		   		 = "${var.environment}-web-server"
		Environment    = var.environment
		})
	}
