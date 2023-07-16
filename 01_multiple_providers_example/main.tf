# The default provider configuration does not need an alias
provider "aws" {
  profile = "prod"
  region  = "us-east-1"
}

# Additional provider configuration; resources can reference this as `aws.west`
provider "aws" {
  profile = "dev"
  region  = "us-west-2"
  alias   = "west"
}

# makes an EC2 instance in the default VPC of the account associated with the "prod" profile
resource "aws_instance" "prod-ec2" {
    provider = aws.west
    ami = "ami-0507f77897697c4ba"
    instance_type = "t2.micro"
}
# makes an EC2 instance in the default VPC of the account associated with the "dev" profile
resource "aws_instance" "dev-ec2" {
    ami = "ami-06ca3ca175f37dd66"
    instance_type = "t2.micro"
}
