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

output "ssh_key_name" {
  description = "The name of the SSH key"
  value       = hcloud_ssh_key.default.name
}

output "ssh_key_fingerprint" {
  description = "The fingerprint of the SSH key (useful for verification)"
  value       = hcloud_ssh_key.default.fingerprint
}

output "firewall_ssl_id" {
  description = "The ID of the SSL/HTTP firewall"
  value       = hcloud_firewall.ssl.id
}

output "firewall_ssh_id" {
  description = "The ID of the SSH firewall"
  value       = hcloud_firewall.ssh.id
}

output "ssh_command" {
  description = "Quick reference SSH command to connect to the server"
  value       = "ssh root@${hcloud_server.server.ipv4_address}"
}