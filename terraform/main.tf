#Packer Lab - OpsTeam
provider "aws" {
#    alias = "us-east-2"
    version = "~> 2.0"
    region = "us-east-2"
}
resource "aws_instance" "mypacker"{
    ami = "ami-0fb653ca2d3203ac1"
    instance_type = "t2.micro"
    key_name = "lab-packer-us-east-2"
    tags = {
      Name = "MyPackerServer"
      Project = "Packer Lab"
    }
    vpc_security_group_ids = ["sg-0a262124a5ac286e9"]
    iam_instance_profile = "role_packer_lab"

    user_data = <<EOF
      #! /bin/bash
      sudo apt-get update
      sudo apt-get install git
    EOF
}
