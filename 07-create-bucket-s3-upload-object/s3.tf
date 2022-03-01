resource "aws_s3_bucket" "course-tf-bucket" {
  bucket = "${random_pet.bucket.id}"

  tags = {
    Project = "Course about Terraform and AWS"
    Name = "course-tf-bucket"
    CreateAt = "2022-02-25"
    UpdateAt = ""
    ManagedBy = "Terraform"
  }
}

resource "aws_s3_bucket_acl" "course-tf-bucket-acl" {
  bucket = aws_s3_bucket.course-tf-bucket.id
  acl = "private"
}

resource "aws_s3_bucket_object" "course-tf-bucket-object" {
  bucket = aws_s3_bucket.course-tf-bucket.bucket
  key = "images/aws.png"
  source = "aws.png"
  etag = filemd5("aws.png")
}
