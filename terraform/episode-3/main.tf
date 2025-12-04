terraform {
  required_providers {
    hcloud = {
      source  = "hetznercloud/hcloud"
      version = "~> 1.57"
    }
  }
}

resource "hcloud_firewall" "ssl" {
  name = "ssl_firewall"
  rule {
    direction = "in"
    protocol  = "tcp"
    port      = "443"
    source_ips = [
      "0.0.0.0/0",
    ]
  }

    rule {
    direction = "in"
    protocol  = "tcp"
    port      = "80"
    source_ips = [
      "0.0.0.0/0",
      "::/0",
    ]
  }
}

resource "hcloud_firewall" "ssh" {
  name = "ssh_firewall"
  rule {
    direction = "in"
    protocol  = "tcp"
    port      = "22"
    source_ips = [
      "0.0.0.0/0",
    ]
  }
}


resource "hcloud_ssh_key" "default" {
    name       = "default"
    public_key = "${var.HCLOUD_SSH}"
}

resource "hcloud_server" "server" {
    name        = "episode3-server"
    image       = "ubuntu-24.04"
    server_type = "cx23"
    location    = "fsn1"
    ssh_keys    = [hcloud_ssh_key.default.id]
    firewall_ids = [hcloud_firewall.ssl.id, hcloud_firewall.ssh.id]
}