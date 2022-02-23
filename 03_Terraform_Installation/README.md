# Pre-requsites:

- **Install Terraform CLI**
- **Install Azure CLI**
- **Install VS Code Editor**
- **Install HashiCorp Terraform plugin for VS Code**
- **Install Git Client**

**01: Install Git Client**
- [Download Git Client](https://git-scm.com/downloads) (This is required when we are working with Terraform Modules)

**02: Install Azure CLI**
- Install [Azure CLI](https://docs.microsoft.com/en-us/cli/azure/install-azure-cli-windows?tabs=azure-cli)

**03:Terraform - Authenticating using the Azure CLI in WindowsOS**

**Azure CLI Login**

- az login

**List Subscriptions**

- az account list

**Set Specific Subscription (if we have multiple subscriptions)**

- az account set --subscription="SUBSCRIPTION_ID"

**04: Install Terraform**

- [Download Terraform](https://www.terraform.io/downloads.html)
- [Install CLI](https://learn.hashicorp.com/tutorials/terraform/install-cli)
- Unzip the package
- Create new folder terraform-binaries
- Copy the terraform.exe to a terraformbins
- Set PATH in windows
