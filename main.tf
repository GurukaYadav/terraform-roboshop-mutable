module "vpc" {
  source = "github.com/GurukaYadav/tf-module-vpc"
  VPC_CIDR = var.VPC_CIDR
  PROJECT = var.PROJECT
  ENV = var.ENV
  PUBLIC_SUBNETS_CIDR = var.PUBLIC_SUBNETS_CIDR
  PRIVATE_SUBNETS_CIDR = var.PRIVATE_SUBNETS_CIDR
}

terraform {
  backend "s3" {}
}

provider "aws" {
  region = "us-east-1"
}

