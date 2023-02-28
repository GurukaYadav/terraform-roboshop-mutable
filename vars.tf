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
variable "ENGINE" {}
variable "ENGINE_VERSION" {}
variable "RDS_INSTANCE_CLASS" {}
variable "USER_NAME" {}
variable "PASSWORD" {}
//variable "PARAMETER_GROUP_NAME" {}
variable "RDS_PORT" {}
variable "PG_FAMILY" {}






