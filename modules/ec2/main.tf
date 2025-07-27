resource "aws_instance" "Servidor_base" {
  ami           = var.ami_eu_west_3_ubuntu
  instance_type = var.tipo_instancia

        //////////////////////////////////
  user_data = <<-EOF
              #!/bin/bash
              echo "pongo lo que me da la gana en este servidor" > index.html
              nohup busybox httpd -f -p 80 &
              EOF
    //////////////////////////////////

}