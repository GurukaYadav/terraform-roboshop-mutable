module "vpc" {
  source = "github.com/GurukaYadav/tf-module-vpc"
  VPC_CIDR = var.VPC_CIDR
  PROJECT = var.PROJECT
  ENV = var.ENV
}

provider "aws" {
  region = "us-east-1"
}

terraform {
  backend "s3" {
    bucket = "terraform-sfiles"
    key    = "terraform/mutable/${var.ENV}/terraform.tfstate"
    region = "us-east-1"
  }
}