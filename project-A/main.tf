provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "ec2_a" {
  ami           = "ami-05d2d839d4f73aafb"
  instance_type = "t3.micro"

  tags = {
    Name = "Project-A-EC2"
  }
}

# ⏳ ARTIFICIAL DELAY TO DEMONSTRATE LOCKING
# This forces Project A to hold the lock for 60 seconds every time it runs.
resource "time_sleep" "wait_60_seconds" {
  create_duration = "60s"

  triggers = {
    always_run = timestamp()
  }
}
