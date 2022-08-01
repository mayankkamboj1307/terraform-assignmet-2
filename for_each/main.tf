#Map

# resource "aws_instance" "web" {
#   for_each = var.Demo
#   ami = each.value.ami
#   instance_type = each.value.instance_type
#   tags = {
#     Name = each.value.name,
#     Owner = each.key
#   }
# }

#set

resource "aws_instance" "web" {
  for_each = var.Demo1
  ami = "ami-09de362f44ba0a166"
  instance_type = "t2.micro"
  tags = {
    Name = each.value,
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

provider "aws" {
  region ="ap-south-1"
}
