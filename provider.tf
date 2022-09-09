terraform {
  backend "s3" {
    bucket = "sks-terraform-state-files"
    key    = "tf-workspaces/terrform.tfstate"
    region = "ap-south-1"
  }
}

provider "aws" {
    region = "ap-south-1"
}