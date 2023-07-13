terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }
  # remote backend #
  backend "remote" {
    organization = "etai-tavor-company"

    workspaces {
      name = "opsschool-project"
    }
  }
  required_version = ">= 1.2.0"
}

provider "aws" {
  region = "us-east-1"
  #shared_config_files      = ["/home/ec2-user/.aws/config"]
  shared_credentials_files = ["/home/ec2-user/.aws/credentials"]
  #profile                  = "ec2admin"
}
