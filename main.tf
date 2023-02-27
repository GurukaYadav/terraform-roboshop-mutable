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

module "rds" {
  source = "github.com/GurukaYadav/tf-module-rds"
  PROJECT = var.PROJECT
  ENV = var.ENV
  db_name              = var.DB_NAME
  engine               = var.ENGINE
  engine_version       = var.ENGINE_VERSION
  instance_class       = var.INSTANCE_CLASS
  username             = var.USER_NAME
  password             = var.PASSWORD
  parameter_group_name = var.PARAMETER_GROUP_NAME
  VPC_ID = module.VPC.VPC_ID
  PRIVATE_SUBNET_ID = module.VPC.PRIVATE_SUBNET_ID
  PORT = var.PORT
  PRIVATE_SUBNETS_CIDR = var.PRIVATE_SUBNET_CIDR
  PG_FAMILY = var.PG_FAMILY
}

