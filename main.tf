module "vpc" {
  source = "github.com/GurukaYadav/tf-module-vpc"
  VPC_CIDR = var.VPC_CIDR
  PROJECT = var.PROJECT
  ENV = var.ENV
}

terraform {
  backend "s3" {
}

provider "aws" {
region = "us-east-1"
}

