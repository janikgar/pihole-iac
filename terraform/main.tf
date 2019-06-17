variable "region" {
  description = "AWS EC2 Region used"
  default = "us-west-2"
}

variable "ami_id" {
  description = "AMI built in Packer"
  default = "ami-0adafe63ecb0f6ed3"
}

provider "aws" {
  profile = "default"
  region = "${var.region}"
}

resource "aws_instance" "pihole-single" {
  ami = "${var.ami_id}"
  instance_type = "t2.micro"
}