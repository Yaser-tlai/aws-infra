provider "aws" {
  region = "eu-west-3"
}

module "ec2" {
  source = "./modules/ec2"
}