resource "aws_instance" "churrops" {
  ami             = "${lookup(var.amis, var.aws_region)}"
  instance_type   = "t2.micro"
  security_groups = "allow_http_ssh"
  user_data       = <<-EOF
                  #!/bin/bash
                  yum update -y
                  yum install nginx -y
                  /etc/init.d/nginx start
                  EOF
    tags {
    Name          = "terraform-churrops"
  }
}