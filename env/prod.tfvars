PROJECT = "roboshop"
ENV = "prod"
WORKSTATION = "172.31.3.136/32"
PROMETHEUS = "172.31.80.42/32"
PRIVATE_HOSTED_ZONE_ID = "Z09795371B4E6NSGDAYG0"
PUBLIC_HOSTED_ZONE_ID = "Z05568133HLM03T00MJ2L"


//VPC
VPC_CIDR = "100.0.0.0/16"
PUBLIC_SUBNET_CIDR = ["100.0.0.0/24","100.0.1.0/24"]
PRIVATE_SUBNET_CIDR = ["100.0.2.0/24","100.0.3.0/24"]
PUBLIC_SUBNETS_AZ = ["us-east-1a","us-east-1b"]
PRIVATE_SUBNETS_AZ = ["us-east-1a","us-east-1b"]
DEFAULT_VPC_ID = "vpc-0866353c733e68495"
DEFAULT_VPC_CIDR = "172.31.0.0/16"
DEFAULT_VPC_RT = "rtb-08b2d70e78df25007"

//RDS
DB_NAME                  = "mydb"
RDS_ENGINE               = "mysql"
RDS_ENGINE_VERSION       = "5.7"
RDS_INSTANCE_CLASS       = "db.t3.micro"
//PARAMETER_GROUP_NAME = "aws_db_parameter_group.pg.name"
RDS_PORT                 = "3306"
RDS_PG_FAMILY            = "mysql5.7"

//DOCDB
DOC_DB_ENGINE            = "docdb"
DOC_DB_ENGINE_VERSION    = "4.0.0"
DOC_DB_INSTANCE_CLASS    = "db.t3.medium"
DOC_DB_PG_FAMILY         = "docdb4.0"
DOC_DB_PORT              = "27017"
DOC_DB_NO_OF_NODES       = "1"

//ELASTICACHE
ELASTICACHE_ENGINE  = "redis"
ELASTICACHE_ENGINE_VERSION = "6.2"
ELASTICACHE_INSTANCE_CLASS = "cache.t3.small"
ELASTICACHE_NO_OF_NODES    = "1"
ELASTICACHE_PORT    = "6379"
ELASTICACHE_PG_FAMILY = "redis6.x"

//RABBITMQ
RABBITMQ_INSTANCE_TYPE = "t3.micro"
RABBITMQ_PORT = "5672"
SSH_PORT = "22"

//LOADBALANCERS
PUB_PORT = "443"
PRI_PORT = "80"






//INSTANCE_COUNT
INSTANCE = {
  FRONTEND = {
    COUNT = 2
    INSTANCE_TYPE = "t3.micro"
  }
  CART = {
    COUNT = 2
    INSTANCE_TYPE = "t3.micro"

  }
  CATALOGUE = {
    COUNT = 2
    INSTANCE_TYPE = "t3.micro"
  }
  USER = {
    COUNT = 2
    INSTANCE_TYPE = "t3.micro"
  }
  SHIPPING = {
    COUNT = 3
    INSTANCE_TYPE = "t3.medium"
  }
  PAYMENT = {
    COUNT = 2
    INSTANCE_TYPE = "t3.micro"
  }
  DISPATCH = {
    COUNT = 2
    INSTANCE_TYPE = "t3.micro"
  }
}
