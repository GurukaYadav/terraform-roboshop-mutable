PROJECT = "roboshop"
ENV = "dev

//VPC
VPC_CIDR = "10.0.0.0/16"
PUBLIC_SUBNETS_CIDR = ["10.0.0.0/24","10.0.1.0/24"]
PRIVATE_SUBNETS_CIDR = ["10.0.2.0/24","10.0.3.0/24"]
PUBLIC_SUBNETS_AZ = ["us-east-1a","us-east-1b"]
PRIVATE_SUBNETS_AZ = ["us-east-1a","us-east-1b"]
DEFAULT_VPC_ID = "vpc-0866353c733e68495"
DEFAULT_VPC_CIDR = "172.31.0.0/16"
DEFAULT_VPC_RT = "rtb-08b2d70e78df25007"

//RDS
DB_NAME              = "mydb"
ENGINE               = "mysql"
ENGINE_VERSION       = "5.7"
INSTANCE_CLASS       = "db.t3.micro"
USER_NAME             = "foo"
PASSWORD             = "foobarbaz"
PARAMETER_GROUP_NAME = "aws_db_parameter_group.pg.name"
PORT = "3306"
PG_FAMILY = "mysql5.6"