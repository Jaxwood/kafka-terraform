output "environment_name" {
  value       = confluentcloud_environment.dev-env.display_name
  description = "Environment name"
}
output "cluster_name" {
  value       = confluentcloud_kafka_cluster.dev-basic-cluster.display_name
  description = "Cluster name"
}
output "sa_name" {
  value       = confluentcloud_service_account.dev-sa.display_name
  description = "Service account name"
}