provider "aws" {
  region = "eu-west-3"
}

resource "aws_instance" "prueba" {
  ami = "ami-04ec97dc75ac850b1"
  instance_type = "t3.micro"
}