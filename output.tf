output "environment_name" {
  value       = confluentcloud_environment.dev-env.display_name
  description = "Confluent environment name"
}