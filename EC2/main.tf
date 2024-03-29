# Create an EC2 instance with custom parameters(tested)
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

provider "aws" {
  region = var.region
}

resource "aws_instance" "EC2-instance" {
  ami             = var.ami_id
  instance_type   = var.instance_type
  key_name        = var.passkey
  security_groups = [var.security_group[0]]
  tags = {
    Name = var.instance_name
  }
}
