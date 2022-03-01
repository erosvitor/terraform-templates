terraform {
  required_version = "1.1.6"
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.2.0"
    }
  }
}

provider "aws" {
  region = var.aws_region
}

resource "aws_instance" "course-tf-ec2" {
  ami = var.instance_ami
  instance_type = var.instance_type
  tags = var.instance_tags
}
