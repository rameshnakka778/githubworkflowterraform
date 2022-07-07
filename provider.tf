terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.2.0"
    }  
  }
  backend "s3" {
    bucket = "js-s3-aws-glue-bb"
    key    = "dev/blackberry_pull_request/terraform.tfstate"
    region = "eu-west-1"
    profile = "js-dpp1"
  }


}

provider "aws" {
    region = var.my_region
    profile = var.my_profile
}
# terraform {
  
# }