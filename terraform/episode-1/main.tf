terraform {
  required_providers {
    hcloud = {
      source  = "hetznercloud/hcloud"
      version = "~> 1.57"
    }
  }
}

resource "hcloud_server" "episode1" {
    name        = "episode1-server"
    image       = "ubuntu-24.04"
    server_type = "cx23"
    location    = "fsn1"
}