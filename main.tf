terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

resource "aws_instance" "terraform-cloud" {
  ami = "ami-0a2e7efb4257c0907"
  instance_type = "t2.micro"
  security_groups = ["SSH-from-all"]
  key_name = "MyKeyPair"

  tags = {
    Name = var.environment
  }
}
