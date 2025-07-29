provider "aws" {
  region = var.Region
}

module "sg" {
  source = "./modules/security_group"
}

module "ec2" {
  source = "./modules/ec2"
  sg_id = module.sg.sg_id
}
