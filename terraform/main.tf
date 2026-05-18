provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "devops_server" {

  ami           = "ami-0c7217cdde317cfec"

  instance_type = "t2.micro"

  key_name = "YOUR_KEY_NAME"

  tags = {
    Name = "DevOpsLabFinal"
  }
}