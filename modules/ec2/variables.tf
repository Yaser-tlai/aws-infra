variable "ami_eu_west_ubuntu" {
    type = string
    default = "ami-04ec97dc75ac850b1"
}

variable "tipo_instancia" {
    type = string
    default = "t3.micro"
}

variable "sg_id" {
  type = list(string)
}