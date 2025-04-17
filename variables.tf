variable "resource_group_name" {
  description = "Name of the resource group."
  type        = string
  default     = "azure-vm-rg"
}

variable "location" {
  description = "Azure region for resources."
  type        = string
  default     = "East US"
}

variable "vnet_name" {
  description = "Name of the virtual network."
  type        = string
  default     = "azure-vm-vnet"
}

variable "subnet_name" {
  description = "Name of the subnet."
  type        = string
  default     = "azure-vm-subnet"
}

variable "public_ip_name" {
  description = "Name of the public IP."
  type        = string
  default     = "azure-vm-pip"
}

variable "nic_name" {
  description = "Name of the network interface."
  type        = string
  default     = "azure-vm-nic"
}

variable "vm_name" {
  description = "Name of the virtual machine."
  type        = string
  default     = "azure-vm"
}

variable "admin_username" {
  description = "Admin username for the VM."
  type        = string
  default     = "azureuser"
}

variable "admin_ssh_key" {
  description = "Public SSH key for authentication."
  type        = string
}

variable "vm_size" {
  description = "Azure VM size."
  type        = string
  default     = "Standard_B1s"
}
