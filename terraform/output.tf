
output "ecr_repository_url" {
  description = "URL of the ECR repository for the Flask application"
  value       = module.ecr.repository_url
}

output "rds_endpoint" {
  description = "Endpoint of the RDS MySQL database"
  value       = module.rds.db_endpoint
}

output "rds_address" {
  description = "Hostname of the RDS MySQL database"
  value       = module.rds.db_address
}

output "eks_cluster_name" {
  description = "Name of the EKS cluster"
  value       = module.eks.cluster_name
}
