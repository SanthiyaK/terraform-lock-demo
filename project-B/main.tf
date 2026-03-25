provider "aws" {
  region = "eu-north-1"
}

resource "aws_instance" "ec2_b" {
  ami           = "ami-0aaa636894689fa47"
  instance_type = "t3.micro"

  tags = {
    Name = "Project-B-EC2"
  }
}
