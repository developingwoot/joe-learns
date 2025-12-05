variable "HCLOUD_SSH" {
  description = "SSH public key for Hetzner Cloud"
  type        = string
  sensitive   = true
}

variable "server_name" {
  description = "Name of the server"
  type        = string
  default     = "episode4-server"
}

variable "image" {
  description = "Operating system image for the server"
  type        = string
  default     = "ubuntu-24.04"
}

variable "server_type" {
  description = "Server hardware type"
  type        = string
  default     = "cx23"
}

variable "location" {
  description = "Data center location"
  type        = string
  default     = "fsn1"
}

variable "firewall_ssh_name" {
  description = "Name of the SSH firewall"
  type        = string
  default     = "ssh_firewall"
}

variable "firewall_ssl_name" {
  description = "Name of the SSL/HTTP firewall"
  type        = string
  default     = "ssl_firewall"
}