variable "aws_access_key" {}
variable "aws_secret_key" {}
variable "aws_region" {}
variable "server_port" {}
variable "amis" {
  type = "map"
  default = {
    us-east-1 = "ami-a4c7edb2"
  }
}
