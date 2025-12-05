

resource "hcloud_server" "server" {
    name        = var.server_name
    image       = var.image
    server_type = var.server_type
    location    = var.location
    ssh_keys    = [hcloud_ssh_key.default.id]
    firewall_ids = [hcloud_firewall.ssl.id, hcloud_firewall.ssh.id]
}