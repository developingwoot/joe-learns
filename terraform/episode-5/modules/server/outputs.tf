output "server_ip" {
  description = "The public IP address of the server"
  value       = hcloud_server.server.ipv4_address
}

output "server_id" {
  description = "The unique identifier of the server"
  value       = hcloud_server.server.id
}

output "server_name" {
  description = "The name of the server"
  value       = hcloud_server.server.name
}


output "ssh_command" {
  description = "Quick reference SSH command to connect to the server"
  value       = "ssh root@${hcloud_server.server.ipv4_address}"
}

output "firewall_ssl_id" {
  description = "The ID of the SSL firewall"
  value       = module.firewall.firewall_ssl_id
}

output "firewall_ssh_id" {
  description = "The ID of the SSH firewall"
  value       = module.firewall.firewall_ssh_id
}