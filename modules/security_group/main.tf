data "aws_vpc" "vpc_id" {
    default =  true  
}

resource "aws_security_group" "sg_ec2" {
        name = "SG del EC2"
        vpc_id = data.aws_vpc.vpc_id.id

    ingress{
        from_port   = 80
        to_port     = 80
        protocol    = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
}
    ingress {
        from_port   = 22
        to_port     = 22
        protocol    = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }

    egress {
        from_port   = 0
        to_port     = 0
        protocol    = "-1"
        cidr_blocks = ["0.0.0.0/0"]
  }
}
