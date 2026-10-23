module "vpc" {
  source = "./modules/vpc"

  project_name         = var.project_name
  vpc_cidr             = var.vpc_cidr
  public_subnet_cidrs  = var.public_subnet_cidrs
  private_subnet_cidrs = var.private_subnet_cidrs
}

# EKS module
module "eks" {
  source = "./modules/eks"

  project_name                         = var.project_name
  kubernetes_version                   = "1.36"
  subnet_ids                           = module.vpc.public_subnet_ids
  cluster_endpoint_public_access_cidrs = ["152.56.10.238/32"]
}


module "ecr" {
  source = "./modules/ecr"

  project_name = var.project_name
}


# RDS module
module "rds" {
  source = "./modules/rds"

  project_name       = var.project_name
  vpc_id             = module.vpc.vpc_id
  vpc_cidr           = var.vpc_cidr
  private_subnet_ids = module.vpc.private_subnet_ids

  db_username = var.db_username
  db_password = var.db_password
}
