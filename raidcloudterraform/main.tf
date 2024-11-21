provider "aws" {
  region = "ap-southeast-1"  # Change this to your desired region
}

locals {
  sg_rules = csvdecode(file("config/security_group_rules.csv"))
}

# Module for raidcloudweb01
module "raidcloudweb" {
  source        = "./modules/ec2"
  ami_id        = var.ami_id
  instance_type = var.instance_type
  key_name      = var.key_name
  sg_rules      = local.sg_rules
  instance_name = "raidcloudweb01"
}

# No 2 EC2
#module "ec2_2" {
#  source        = "./modules/ec2"
#  ami_id        = var.ami_id
#  instance_type = var.instance_type
#  key_name      = var.key_name
#  sg_rules      = local.sg_rules
#  instance_name = "ec2_2"
#}


