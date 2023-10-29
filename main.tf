provider "aws" {
  region = "us-west-2"
}

resource "aws_s3_bucket" "adventure_tech_bucket" {
  bucket = "adventuretech-jt-bucket"
  
}

resource "aws_s3_bucket" "nature_escape_bucket" {
  bucket = "natureescape-jt-bucket"
  
}

resource "aws_s3_bucket" "code_carnival_bucket" {
  bucket = "codecarnival-jt-bucket"
  
}

output "bucket_ids" {
  value = [
    aws_s3_bucket.adventure_tech_bucket.id,
    aws_s3_bucket.nature_escape_bucket.id,
    aws_s3_bucket.code_carnival_bucket.id
  ]
}
