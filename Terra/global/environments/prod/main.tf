# Load global settings (providers, vars)
terraform {
  required_version = ">= 1.3.0"
}

# -------------------- EC2 in primary region --------------------
module "ec2_region1" {
  source = "../../modules/ec2"

  providers = {
    aws = aws
  }

  name          = "${var.project_name}-r1"
  ami_id        = var.ami_id_region1
  instance_type = var.instance_type
  key_name      = var.key_name
  vpc_id        = var.vpc_id
  env           = "prod"
}

# -------------------- EC2 in secondary region --------------------
module "ec2_region2" {
  source = "../../modules/ec2"

  providers = {
    aws = aws.region2
  }

  name          = "${var.project_name}-r2"
  ami_id        = var.ami_id_region2
  instance_type = var.instance_type
  key_name      = var.key_name
  vpc_id        = var.vpc_id_region2
  env           = "prod"
}
