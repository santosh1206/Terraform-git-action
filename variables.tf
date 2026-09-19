variable "resource_group_name" {
  type        = string
  description = "Name of the Azure Resource Group"
  default     = "rg-demo-tf-ghaction"
}

variable "location" {
  type        = string
  description = "Azure region to deploy resources"
  default     = "eastus"
}
