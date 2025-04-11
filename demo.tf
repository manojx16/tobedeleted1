terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}
provider "aws" {
  region     = "us-east-1"
  access_key = "AKIA6ODVAQZ5LUPOFB5E"
  secret_key = "6UZnmjlnyEvuJ8NPa9i+NL2JYvHVcril3b/VCCTY"
}
resource "aws_ecr_repository" "my_ecr_repo" {
  name                 = "ecr" # Change this to your repo name
  image_tag_mutability = "MUTABLE"     # or "IMMUTABLE"


  tags = {
    Environment = "dev"
    Team        = "DevOps"
  }
}
