provider "aws" {
  region = "${var.region}"
}

module "instances" {
  source = "./instances"
}
