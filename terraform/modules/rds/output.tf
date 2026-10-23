
output "db_endpoint" {
  description = "Endpoint of the RDS MySQL database"
  value       = aws_db_instance.mysql.endpoint
}

output "db_address" {
  description = "Hostname of the RDS MySQL database"
  value       = aws_db_instance.mysql.address
}

output "db_port" {
  description = "Port of the RDS MySQL database"
  value       = aws_db_instance.mysql.port
}
