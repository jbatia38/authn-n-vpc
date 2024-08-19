#configure aws provider

provider "aws" {
  region = "us-east-1"
  profile = "genuser"               
}

#stores the terraform state file in S3


terraform {
  backend "s3" {    
    bucket = "terraform-rem-state"
    key = "terraform.tfstate.dev"
    region = "us-east-1"
    profile = "genuser"
  }
}


resource "aws_vpc" "dcn" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "dcn"
  }
}