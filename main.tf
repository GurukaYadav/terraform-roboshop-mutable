module "vpc" {
  source = "github.com/GurukaYadav/tf-module-vpc"
  VPC_CIDR = var.VPC_CIDR
  PROJECT = var.PROJECT
  ENV = var.ENV
  PUBLIC_SUBNET_CIDR = var.PUBLIC_SUBNET_CIDR
  PRIVATE_SUBNET_CIDR = var.PRIVATE_SUBNET_CIDR
  PUBLIC_SUBNETS_AZ = var.PUBLIC_SUBNETS_AZ
  PRIVATE_SUBNETS_AZ = var.PRIVATE_SUBNETS_AZ
  DEFAULT_VPC_ID = var.DEFAULT_VPC_ID
  DEFAULT_VPC_CIDR = var.DEFAULT_VPC_CIDR
  DEFAULT_VPC_RT = var.DEFAULT_VPC_RT
}

module "rds" {
  source = "github.com/GurukaYadav/tf-module-rds"
  PROJECT = var.PROJECT
  ENV = var.ENV
  DB_NAME              = var.DB_NAME
  ENGINE               = var.ENGINE
  ENGINE_VERSION       = var.ENGINE_VERSION
  INSTANCE_CLASS       = var.INSTANCE_CLASS
  USER_NAME            = var.USER_NAME
  PASSWORD             = var.PASSWORD
  parameter_group_name = var.PARAMETER_GROUP_NAME
  VPC_ID = module.VPC.VPC_ID
  PRIVATE_SUBNET_ID = module.VPC.PRIVATE_SUBNET_ID
  PORT = var.PORT
  PRIVATE_SUBNET_CIDR = var.PRIVATE_SUBNET_CIDR
  PG_FAMILY = var.PG_FAMILY
}

