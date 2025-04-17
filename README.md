# Azure VM Terraform Deployment

This Terraform configuration provisions an Ubuntu virtual machine in Azure with the following resources:
- Resource Group
- Virtual Network and Subnet
- Public IP Address
- Network Interface
- Ubuntu Linux Virtual Machine (with SSH key authentication)

## Directory Structure

```
azure-vm-terraform/
├── main.tf            # Main resources
├── variables.tf       # Input variables
├── outputs.tf         # Output values
├── provider.tf        # Provider configuration
├── terraform.tfvars   # Variable values (edit SSH key here)
└── README.md          # This guide
```

## Prerequisites
- [Terraform](https://www.terraform.io/downloads.html) >= 1.3.0
- Azure CLI authenticated (run `az login`)
- An SSH public key (e.g., from `~/.ssh/id_rsa.pub`)

## Usage

### 1. Initialize Terraform
```
terraform init
```

### 2. Review the Plan
```
terraform plan
```

### 3. Apply the Configuration
```
terraform apply
```
Approve the plan when prompted. Resources will be created in your Azure subscription.

### 4. Access the VM
- Get the public IP from the Terraform output or Azure portal.
- SSH into the VM:
  ```
  ssh <admin_username>@<public_ip_address>
  ```

## Customization
- Edit `terraform.tfvars` to set your SSH key and override defaults (location, VM size, etc).
- All resource names and settings are configurable via variables.

## Outputs
- `public_ip_address`: The VM's public IP
- `admin_username`: The admin username

## Clean Up
To destroy all resources:
```
terraform destroy
```

---

**Best Practices:**
- Use variables for all configurable values.
- Keep sensitive data (like SSH private keys) out of version control.
- Use remote state for team environments.
