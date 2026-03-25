provider "aws" {
  region = "eu-north-1"
}

# S3 Bucket for state
resource "aws_s3_bucket" "tf_state" {
  bucket = "tf-state-demo-lock-unique-12345-9876"
}

# DynamoDB for locking
resource "aws_dynamodb_table" "tf_lock" {
  name         = "terraform-lock-table"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }
}
