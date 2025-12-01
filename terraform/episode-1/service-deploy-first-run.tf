# Tell terraform to use the provider and select a version.
terraform {
  required_providers {
    hcloud = {
      source  = "hetznercloud/hcloud"
      version = "~> 1.57"
    }
  }
}


# Set the variable value in *.tfvars file
# or using the -var="hcloud_token=..." CLI option
variable "hcloud_token" {
  sensitive = true
}

# Configure the Hetzner Cloud Provider
provider "hcloud" {
  token = var.hcloud_token
}

resource "hcloud_server" "server" {
  name        = "server"
  server_type = "cx23"
  image       = "ubuntu-24.04"
  location    = "nbg1"
  public_net  {
    ipv4_enabled = true
    ipv6_enabled = true
  }
}
