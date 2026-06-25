locals {
  common_tags = {
    Project   = "my-devops-project"
    ManagedBy = "terraform"
  }
}

module "vpc" {
  source      = "../../modules/vpc"
  vpc_cidr    = var.vpc_cidr
  environment = var.environment
  tags        = local.common_tags
}

module "ec2" {
  source        = "../../modules/ec2"
  ami_id        = var.ami_id
  instance_type = var.instance_type
  subnet_id     = module.vpc.public_subnet_id
  environment   = var.environment
  tags          = local.common_tags

  user_data = file("${path.module}/user-data.sh")
}




