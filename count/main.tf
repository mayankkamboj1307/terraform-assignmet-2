resource "aws_instance" "web" {
  count = length(var.ami)
 
  ami= var.ami[count.index]
  
  instance_type = "t2.micro"
  
  tags = {
    Name = var.name_ct[count.index],
    Owner = "Mayank"
  }
}

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.23.0"
    }
  }
}

provider "aws"{
  region ="ap-south-1"
}