terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.2.0"
    }  
  }
  backend "s3" {
    bucket = "dpp-dev-raw-src-rdw"
    key    = "C3/dev/blackberry_pull_request/terraform.tfstate"
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
