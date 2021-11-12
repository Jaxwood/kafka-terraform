# Kafka Terraform

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