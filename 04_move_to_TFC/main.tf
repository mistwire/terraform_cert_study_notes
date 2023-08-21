terraform {
  cloud {
    organization = "mistwire-bootcamp"
    workspaces {
      name = "bootcamp-workspace"
    }
  }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.13.1"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "WebServer" {
  ami           = "ami-06ca3ca175f37dd66"
  instance_type = "t2.micro"
  tags = {
    Name = "My 1st webserver"
  }
}


