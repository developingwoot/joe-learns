module "firewall" {
  source = "../firewall"
  firewall_ssh_name = var.firewall_ssh_id
  firewall_ssl_name = var.firewall_ssl_id
}


resource "hcloud_server" "server" {
    name        = var.server_name
    image       = var.image
    server_type = var.server_type
    location    = var.location
    ssh_keys    = [var.ssh_key]
    firewall_ids = [
        module.firewall.firewall_ssh_id,
        module.firewall.firewall_ssl_id

    ]
}