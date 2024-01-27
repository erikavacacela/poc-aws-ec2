terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  required_version = ">= 1.6.2"

  backend "s3" {
    bucket = "erika-terraform-state"
    key    = "poc-aws-ec2/dev/poc-aws-ec2.tfstate"
    region = "us-east-1"
  }
}
