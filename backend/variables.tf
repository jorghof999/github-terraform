variable "rg_backend_name" {
  description = "Navnet på backend resourcegroup"
  type        = string
}

variable "rg_backend_location" {
  description = "Lokasjon for backend"
  type        = string
}

variable "sa_backend_name" {
  type        = string
  description = "Navnet til storage account"
}

variable "sc_backend" {
  type        = string
  description = "Navnet til storage container"
}

variable "kv_backend_name" {
  type        = string
  description = "Navnet til key-vault"
}

variable "sa_backend_access_key_name" {
  type        = string
  description = "Navnet til access key for storage account til backend"
}

variable "subscription_id" {    
  type        = string
  description = "Subscription ID"
}