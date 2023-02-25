module "vpc" {
  source = "github.com/GurukaYadav/tf-module-vpc"
  VPC_CIDR = var.VPC_CIDR
  PROJECT = var.PROJECT
  ENV = var.ENV
  PUBLIC_SUBNETS_CIDR = var.PUBLIC_SUBNETS_CIDR
  PRIVATE_SUBNETS_CIDR = var.PRIVATE_SUBNETS_CIDR
  PUBLIC_SUBNETS_AZ = var.PUBLIC_SUBNETS_AZ
  PRIVATE_SUBNETS_AZ = var.PRIVATE_SUBNETS_AZ
  DEFAULT_VPC_ID = var.DEFAULT_VPC_ID
  DEFAULT_VPC_CIDR = var.DEFAULT_VPC_CIDR
  DEFAULT_VPC_RT = var.DEFAULT_VPC_RT
}

terraform {
  backend "s3" {}
}

provider "aws" {
  region = "us-east-1"
}

