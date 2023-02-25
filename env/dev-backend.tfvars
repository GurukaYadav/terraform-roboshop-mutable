bucket = "terraform-sfiles"
key    = "terraform/mutable/dev/terraform.tfstate"
region = "us-east-1"

terraform {
  backend "s3"
}

provider "aws" {
region = "us-east-1"
}