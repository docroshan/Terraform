terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

provider "aws" {
  region = "eu-north-1"
}

resource "aws_instance" "ec2_example" {
  ami           = "ami-0014ce3e52359afbd" # Ubuntu 20.04 LTS // eu-north-1
  instance_type = "t3.micro"
  key_name      = "pkey-aws"
  security_groups = ["launch-wizard-1"]  # Use a list for security groups
  tags = {
    Name = "Terraform_Demo"
  }
}
