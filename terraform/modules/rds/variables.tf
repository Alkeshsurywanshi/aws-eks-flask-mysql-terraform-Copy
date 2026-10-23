
variable "project_name" {
  description = "The name of the project"
  type        = string
}

variable "vpc_cidr" {
  description = "The CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"

}

variable "vpc_id" {

  description = "ID of the VPC where RDS will be created"
  type        = string

}

variable "private_subnet_ids" {
  description = "IDs of the private subnets for RDS"
  type        = list(string)

}

variable "db_username" {
  description = "Master username for MySQL"
  type        = string

}

variable "db_password" {
  description = "Master password for MySQL"
  type        = string
  sensitive   = true

}