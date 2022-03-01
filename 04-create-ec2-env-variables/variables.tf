variable "aws_region" {
  type = string
  description = ""
}

variable "instance_ami" {
  type = string
  description = ""
}

variable "instance_type" {
  type = string
  description = ""
}

variable "instance_tags" {
  type = map(string)
  description = ""
  default = {
    Project = "Course about Terraform and AWS"
    Name = "course-tf-ec2"
    CreateAt = "2022-02-23"
    UpdateAt = ""
    ManagedBy = "Terraform"
  }
}

