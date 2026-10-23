variable "project_name" {
  description = "The name of the project"
  type        = string
  default     = "My-2Tier"
}

variable "aws_region" {
  description = "AWS_region"
  type        = string
  default     = "us-west-1"

}

variable "vpc_cidr" {
  description = "CIDR Block for VPC"
  type        = string
  default     = "10.0.0.0/16"

}

variable "public_subnet_cidrs" {
  description = "CIDR blocks for public subnets"
  type        = list(string)
  default     = ["10.0.1.0/24", "10.0.2.0/24"]
}

variable "private_subnet_cidrs" {
  description = "CIDR blocks for private subnets"
  type        = list(string)
  default     = ["10.0.3.0/24", "10.0.4.0/24"]
}


variable "db_username" {
  description = "Master username for the RDS MySQL database"
  type        = string
  default     = "appadmin"
}

variable "db_password" {
  description = "Master password for the RDS MySQL database"
  type        = string
  sensitive   = true
}
