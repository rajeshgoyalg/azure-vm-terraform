output "public_ip_address" {
  description = "The public IP address of the virtual machine."
  value       = azurerm_public_ip.vm_public_ip.ip_address
}

output "admin_username" {
  description = "The admin username for the VM."
  value       = var.admin_username
}
