resource "aws_instance" "servidor_base" {
  ami           = var.ami_eu_west_ubuntu
  instance_type = var.tipo_instancia
  vpc_security_group_ids = var.sg_id
  associate_public_ip_address = true



      
            user_data = <<-EOF
            #!/bin/bash
            apt-get update -y
            apt-get install -y apache2
            systemctl start apache2
            systemctl enable apache2
            echo Servidor 1 de Ubuntu funcionando correctamente!" > /var/www/html/index.html
            EOF
      
}