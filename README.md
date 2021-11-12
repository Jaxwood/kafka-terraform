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
