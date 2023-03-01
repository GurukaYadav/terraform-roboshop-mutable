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
  DB_NAME                  = var.DB_NAME
  ENGINE               = var.RDS_ENGINE
  ENGINE_VERSION       = var.RDS_ENGINE_VERSION
  INSTANCE_CLASS   = var.RDS_INSTANCE_CLASS
  //PARAMETER_GROUP_NAME = var.PARAMETER_GROUP_NAME
  VPC_ID = module.vpc.VPC_ID
  PRIVATE_SUBNET_ID = module.vpc.PRIVATE_SUBNET_ID
  PORT = var.RDS_PORT
  PRIVATE_SUBNET_CIDR = var.PRIVATE_SUBNET_CIDR
  PG_FAMILY = var.RDS_PG_FAMILY
}

module "docdb" {
  source = "github.com/GurukaYadav/tf-module-docdb"
  PROJECT = var.PROJECT
  ENV = var.ENV
  ENGINE = var.DOC_DB_ENGINE
  ENGINE_VERSION = var.DOC_DB_ENGINE_VERSION
  INSTANCE_CLASS = var.DOC_DB_INSTANCE_CLASS
  PG_FAMILY      = var.DOC_DB_PG_FAMILY
  PRIVATE_SUBNET_ID     = module.vpc.PRIVATE_SUBNET_ID
  VPC_ID = module.vpc.VPC_ID
  PORT  = var.DOC_DB_PORT
  PRIVATE_SUBNET_CIDR = var.PRIVATE_SUBNET_CIDR
  NO_OF_NODES = var.DOC_DB_NO_OF_NODES
}

module "elasticache" {
  source = "github.com/GurukaYadav/tf-module-elasticache"
  ENGINE = var.ELASTICACHE_ENGINE
  ENGINE_VERSION = var.ELASTICACHE_ENGINE_VERSION
  INSTANCE_CLASS = var.ELASTICACHE_INSTANCE_CLASS
  NO_OF_NODES    = var.ELASTICACHE_NO_OF_NODES
  PORT   = var.ELASTICACHE_PORT
  PG_FAMILY = var.ELASTICACHE_PG_FAMILY
  PRIVATE_SUBNET_ID = module.vpc.PRIVATE_SUBNET_ID
  VPC_ID = module.vpc.VPC_ID
  PRIVATE_SUBNET_CIDR = var.PRIVATE_SUBNET_CIDR
  PROJECT = var.PROJECT
  ENV = var.ENV
}

module "rabbitmq" {
  source = "github.com/GurukaYadav/tf-module-rabbitmq"
  INSTANCE_TYPE = var.RABBITMQ_INSTANCE_TYPE
  VPC_ID = module.vpc.VPC_ID
  PORT = var.RABBITMQ_PORT
  PRIVATE_SUBNET_CIDR = var.PRIVATE_SUBNET_CIDR
  SSH_PORT = var.SSH_PORT
  WORKSTATION_IP = var.WORKSTATION
  PRIVATE_SUBNET_ID = module.vpc.PRIVATE_SUBNET_ID
  PROJECT = var.PROJECT
  ENV = var.ENV
}

module "lb" {
  source = "github.com/GurukaYadav/tf-module-mutable-lb"
  VPC_ID = module.vpc.VPC_ID
  PUB_PORT = var.PUB_PORT
  PRI_PORT = var.PRI_PORT
  PRIVATE_SUBNET_CIDR = var.PRIVATE_SUBNET_CIDR
  PRIVATE_SUBNET_ID = module.vpc.PRIVATE_SUBNET_ID
  PUBLIC_SUBNET_ID = module.vpc.PUBLIC_SUBNET_ID
  PROJECT = var.PROJECT
  ENV = var.ENV
}