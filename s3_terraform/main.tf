provider "aws" {
  region = var.aws_region
}

resource "aws_s3_bucket" "basic_bucket" {
  bucket        = "my-bucket-test-unique-123456"
  force_destroy = true
}

output "bucket_name" {
  value = aws_s3_bucket.basic_bucket.bucket
}
