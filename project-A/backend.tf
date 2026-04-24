terraform {
  backend "s3" {
    bucket         = "tf-state-demo-lock-unique-12345-9876"
    key            = "shared/terraform.tfstate"
    region         = "ap-south-1"
    dynamodb_table = "terraform-lock-table"
  }
}