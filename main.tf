
# Example for using Confluent Cloud https://docs.confluent.io/cloud/current/api.html
# that creates multiple resources: a service account, an environment, a basic cluster, a topic, and 2 ACLs.
# Configure Confluent Cloud provider
terraform {
  required_providers {
    confluentcloud = {
      source  = "confluentinc/confluentcloud"
      version = "0.2.0"
    }
  }
}

provider "confluentcloud" {}

resource "confluentcloud_service_account" "dev-sa" {
  display_name = "orginization service account"
  description = "Access to org level resources "
}

resource "confluentcloud_environment" "dev-env" {
  display_name = "Development environment"
}

resource "confluentcloud_kafka_cluster" "dev-basic-cluster" {
  display_name = "test_cluster"
  availability = "SINGLE_ZONE"
  cloud = "AZURE"
  region = "westeurope"
  basic {}
  environment {
    id = confluentcloud_environment.dev-env.id
  }
}

