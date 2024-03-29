/*
How to quickly spin up an AWS EC2 instance in your brand new AWS Free Tier account: 
1. In the terminal type 'terraform init'
2. Wait for terraform to initialize the backend, provider plugins, & create the lock file
3. Type 'terraform apply'
4. Type 'yes'
5. Bask in the knowledge that you've created your first Infrastructure as Code environment!
6. Type 'terraform destroy'
7. Type 'yes' 
8. That's it! Congratulations!!!
*/

terraform {
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


