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
  region = "sa-east-1"
}

resource "aws_s3_bucket" "course-tf-bucket" {
  bucket = "course-tf-bucket"

  tags = {
    Project = "Course about Terraform and AWS"
    Name = "course-tf-bucket"
    CreateAt = "2022-02-23"
    UpdateAt = "2022-02-23"
    ManagedBy = "Terraform"
    Owner = "Eros Vitor Bornatowski"
  }
}

resource "aws_s3_bucket_acl" "course-tf-bucket-acl" {
  bucket = aws_s3_bucket.course-tf-bucket.id
  acl = "private"
}
