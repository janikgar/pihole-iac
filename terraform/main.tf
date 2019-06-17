variable "region" {
  description = "AWS EC2 Region used"
  default = "us-west-2"
}


provider "aws" {
  profile = "default"
  region = "${var.region}"
}

resource "aws_instance" "pihole-single" {
  ami = "ami-0adafe63ecb0f6ed3"
  instance_type = "t2.micro"
}