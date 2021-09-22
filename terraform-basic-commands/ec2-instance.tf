# Terraform Block
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.21"
    }
  }
}

# Providers Block
provider "aws" {
  profile = "default"
  region  = "us-east-1"
}

# Resources Block
resource "aws_instance" "ec2demo" {
  ami           = "ami-087c17d1fe0178315"
  instance_type = "t2.micro"
}
