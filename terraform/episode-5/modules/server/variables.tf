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

variable "firewall_ssl_id" {
  type = string
  description = "Firewall for ssl"
  default = "firewall_ssl"
}

variable "firewall_ssh_id" {
  type = string
  description = "Firewall for ssh"
  default = "firewall_ssh"
}

variable "ssh_key" {
  type = string
  description = "SSH key ID"
  sensitive = true
}
