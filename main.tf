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
  display_name = var.sa-name
  description  = "Access to org level resources "
}

resource "confluentcloud_environment" "dev-env" {
  display_name = var.env-name
}

resource "confluentcloud_kafka_cluster" "dev-basic-cluster" {
  display_name = var.cluster-name
  availability = "SINGLE_ZONE"
  cloud        = "AZURE"
  region       = "westeurope"
  basic {}
  environment {
    id = confluentcloud_environment.dev-env.id
  }
}

