output "eks_cluster_endpoint" {
  description = "The Kubernetes API endpoint"
  value       = aws_eks_cluster.socks_shop_cluster.endpoint
}

output "db_endpoint" {
  description = "The PostgreSQL database endpoint"
  value       = aws_db_instance.socks_shop_db.address
}

output "db_name" {
  description = "The PostgreSQL database name"
  value       = aws_db_instance.socks_shop_db.db_name
}

output "db_user" {
  description = "The PostgreSQL database username"
  value       = aws_db_instance.socks_shop_db.username
}

output "db_password" {
  description = "The PostgreSQL database password"
  value       = aws_db_instance.socks_shop_db.password
  sensitive = true
}

output "vpc_id" {
  description = "The ID of the VPC"
  value       = aws_vpc.main.id
}