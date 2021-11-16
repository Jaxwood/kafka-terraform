# Kafka + Terraform == ❤️

> Declarative approach to provisioing resources in Confluent Cloud.

## Terraform Installation

### Ubuntu installation

```sh
sudo apt-get update && sudo apt-get install -y gnupg software-properties-common curl

curl -fsSL https://apt.releases.hashicorp.com/gpg | sudo apt-key add -

sudo apt-add-repository "deb [arch=amd64] https://apt.releases.hashicorp.com $(lsb_release -cs) main"

sudo apt-get update && sudo apt-get install terraform
```

### Verify installation

```sh
terraform -help
```

### Enable auto-completion

```sh
touch ~/.bashrc
terraform -install-autocomplete
```

## Provisioning

### Prerequisites

*A Confluent Cloud account. Sign up [here](https://www.confluent.io/get-started?product=cloud) To run this example, you must be enrolled into the Confluent Cloud API v2 API Early Access program. To enroll, [email](mailto:cflt-tf-access@confluent.io) Confluent support. If you're not enrolled, you'll receive 403 errors when you apply Terraform plans*

### Applying Terraform Plan

Export Confluent api key and secret

```sh
export CONFLUENT_CLOUD_API_KEY="<cloud_api_key>"
export CONFLUENT_CLOUD_API_SECRET="<cloud_api_secret>"
```

Initialize terraform

```sh
terraform init
```

Create the plan
```sh
terraform plan -out=tf_plan
```

Apply the plan

```sh
terraform apply tf_plan
```

## References

- [Terraform install](https://learn.hashicorp.com/tutorials/terraform/install-cli?in=terraform/aws-get-started)
- [Confluent Terraform example](https://registry.terraform.io/providers/confluentinc/confluentcloud/latest/docs/guides/sample-project)
- [Github example](https://github.com/confluentinc/terraform-provider-confluentcloud/blob/master/docs/guides/sample-project.md#run-terraform-to-create-your-kafka-cluster)
- [Confluent provider documentation](https://registry.terraform.io/providers/confluentinc/confluentcloud/latest/docs)
