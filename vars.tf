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

//RDS
variable "DB_NAME" {}
variable "RDS_ENGINE" {}
variable "RDS_ENGINE_VERSION" {}
variable "RDS_INSTANCE_CLASS" {}
//variable "PARAMETER_GROUP_NAME" {}
variable "RDS_PORT" {}
variable "RDS_PG_FAMILY" {}

//DOCDB
variable "DOC_DB_ENGINE" {}
variable "DOC_DB_ENGINE_VERSION" {}
variable "DOC_DB_INSTANCE_CLASS" {}
variable "DOC_DB_PG_FAMILY" {}
variable "DOC_DB_PORT" {}







