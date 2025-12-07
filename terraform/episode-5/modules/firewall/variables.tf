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