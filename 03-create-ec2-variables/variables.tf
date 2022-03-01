variable "aws_region" {
  type = string
  description = ""
  default = "sa-east-1"
}

variable "instance_ami" {
  type = string
  description = ""
  default = "ami-0cd88166878525f29"
}

variable "instance_type" {
  type = string
  description = ""
  default = "t3.micro"
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

