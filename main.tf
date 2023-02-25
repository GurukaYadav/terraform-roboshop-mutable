module "vpc" {
  source = "github.com/GurukaYadav/tf-module-vpc"
  VPC_CIDR = var.VPC_CIDR
  PROJECT = var.PROJECT
  ENV = var.ENV
  PUBLIC_SUBNET_CIDRS = var.PUBLIC_SUBNET_CIDRS
  PRIVATE_SUBNET_CIDRS = var.PRIVATE_SUBNET_CIDRS
}

terraform {
  backend "s3" {}
}

provider "aws" {
  region = "us-east-1"
}

