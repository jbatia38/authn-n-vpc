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