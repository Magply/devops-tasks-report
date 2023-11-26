# Set terraform to work with AWS
provider "aws" {
  region = "us-east-1"
}

# Create new VPC
module "VPC" {
  source = "./Modules/VPC"
  vpc    = var.VPC
}

# Create VPC Subnets 
module "Subnets" {
  source  = "./Modules/Subnets"
  vpc_id  = module.vpc.vpc_id
  subnet  = var.subnet
  vpc_igw = module.vpc.vpc_gateway_id
}

# Create Route Tables
module "RouteTables" {
  source          = "./Modules/RouteTables"
  vpc_id          = module.vpc.vpc_id
  vpc_gateway_id  = module.vpc.vpc_gateway_id
  public_subnets  = module.subnets.public_subnets
  private_subnets = module.subnets.private_subnets
}

# Create NAT
module "NAT" {
  source          = "./Modules/NAT"
  private_subnets = module.subnets.private_subnets
  public_subnets  = module.subnets.public_subnets
  vpc_id          = module.vpc.vpc_id
  vpc_gateway_id  = module.vpc.vpc_gateway_id
}

# CREATE SG
module "SG" {
  source          = "./Modules/SG"
  vpc_id          = module.vpc.vpc_id
  my_ip           = var.my_ip
  subnet          = var.subnet
  private_subnets = module.subnets.private_subnets
  public_subnets  = module.subnets.public_subnets
}

# Create ACL
module "ACL" {
  source          = "./Modules/ACL"
  vpc_id          = module.vpc.vpc_id
  subnet          = var.subnet
  private_subnets = module.subnets.private_subnets
  public_subnets  = module.subnets.public_subnets
}

# Create ASG
module "ASG" {
  source          = "./Modules/ASG"
  key_name        = var.key_name
  type            = var.type
  key             = var.key
  ami             = var.ami
  sg_web_id       = module.security_groups.sg_web_id
  resource_type   = var.resource_type
  size            = var.size
  public_subnets  = module.subnets.public_subnets
  private_subnets = module.subnets.private_subnets
  threshold_out   = var.threshold_out
  threshold_in    = var.threshold_in
}

# Creates ELB
module "ELB" {
  source                 = "./Modules/ELB"
  vpc_id                 = module.vpc.vpc_id
  port                   = var.port
  protocol               = var.protocol
  health_check_path      = var.health_check_path
  autoscaling_group_name = module.asg.autoscaling_group_id
  elb_type               = var.elb_type
  sg_elb_id              = module.security_groups.sg_elb_id
  public_subnets         = module.subnets.public_subnets
  private_subnets        = module.subnets.private_subnets
  elb_action_type        = var.elb_action_type
}

# Create RDS
module "RDS" {
  source             = "./Modules/RDS"
  public_subnets     = module.subnets.public_subnets
  private_subnets    = module.subnets.private_subnets
  rds_type           = var.rds_type
  rds_engine         = var.rds_engine
  rds_engine_version = var.rds_engine_version
  sg_rds_id          = module.security_groups.sg_rds_id
  rds_storage        = var.rds_storage
  db_password        = var.db_password
  db_username        = var.db_username
}

# Create Redis
module "Redis" {
  source               = "./Modules/Redis"
  public_subnets       = module.subnets.public_subnets
  private_subnets      = module.subnets.private_subnets
  sg_redis_id          = module.security_groups.sg_redis_id
  redis_cluster_id     = var.redis_cluster_id
  redis_engine         = var.redis_engine
  redis_type           = var.redis_type
  redis_param_gn       = var.redis_param_gn
  redis_engine_version = var.redis_engine_version
  redis_port           = var.redis_port
}

# Create Memcached
module "MemCached" {
  source               = "./Modules/MemCached"
  public_subnets       = module.subnets.public_subnets
  private_subnets      = module.subnets.private_subnets
  sg_memcached_id      = module.security_groups.sg_memcached_id
  memcached_cluster_id = var.memcached_cluster_id
  memcached_engine     = var.memcached_engine
  memcached_type       = var.memcached_type
  memcached_param_gn   = var.memcached_param_gn
  memcached_port       = var.memcached_port
}

resource "tls_private_key" "rsa-key" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

resource "aws_key_pair" "aws_key_pair" {
  key_name   = var.key_name
  public_key = tls_private_key.tf-priv-key.public_key_openssh
}

resource "local_sensitive_file" "pem_file" {
  filename        = pathexpand("./${var.key_name}.pem")
  file_permission = "400"
  content         = tls_private_key.tf-priv-key.private_key_pem
}