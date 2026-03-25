terraform {
  backend "s3" {
    bucket         = "tf-state-demo-lock-unique-12345-9876"
    key            = "project-B/terraform.tfstate"
    region         = "eu-north-1"
    dynamodb_table = "terraform-lock-table"
  }
}
