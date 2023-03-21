variable "PROJECT" {}
variable "ENV" {}

//VPC
variable "VPC_CIDR" {}
variable "PUBLIC_SUBNET_CIDR" {}
variable "PRIVATE_SUBNET_CIDR" {}
variable "PUBLIC_SUBNETS_AZ" {}
variable "PRIVATE_SUBNETS_AZ" {}
variable "DEFAULT_VPC_ID" {}
variable "DEFAULT_VPC_CIDR" {}
variable "DEFAULT_VPC_RT" {}
variable "PRIVATE_HOSTED_ZONE_ID" {}

//RDS
variable "DB_NAME" {}
variable "RDS_ENGINE" {}
variable "RDS_ENGINE_VERSION" {}
variable "RDS_INSTANCE_CLASS" env}
//variable "PARAMETER_GROUP_NAME" {}
variable "RDS_PORT" {}
variable "RDS_PG_FAMILY" {}


//DOCDB
variable "DOC_DB_ENGINE" {}
variable "DOC_DB_ENGINE_VERSION" {}
variable "DOC_DB_INSTANCE_CLASS" {}
variable "DOC_DB_PG_FAMILY" {}
variable "DOC_DB_PORT" {}
variable "DOC_DB_NO_OF_NODES" {}

//ELASTICACHE
variable "ELASTICACHE_ENGINE" {}
variable "ELASTICACHE_ENGINE_VERSION" {}
variable "ELASTICACHE_INSTANCE_CLASS" {}
variable "ELASTICACHE_NO_OF_NODES" {}
variable "ELASTICACHE_PORT" {}
variable "ELASTICACHE_PG_FAMILY" {}

//RABBITMQ
variable "RABBITMQ_INSTANCE_TYPE" {}
variable "RABBITMQ_PORT" {}
variable "SSH_PORT" {}
variable "WORKSTATION" {}


//LOADBALANCERS
variable "PUB_PORT" {}
variable "PRI_PORT" {}
variable "PUBLIC_HOSTED_ZONE_ID" {}

//APP
variable "INSTANCE" {}
variable "PROMETHEUS" {}
















