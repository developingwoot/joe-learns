output "server_ip" {
  value       = module.server.server_ip
}

output "server_id" {
  value       = module.server.server_id
}

output "server_name" {
  value       = module.server.server_name
}

output "ssh_key_name" {
  description = "The name of the SSH key"
  value       = hcloud_ssh_key.default.name
}

output "ssh_key_fingerprint" {
  description = "The fingerprint of the SSH key (useful for verification)"
  value       = hcloud_ssh_key.default.fingerprint
}

output "ssh_command" {
  value       = module.server.ssh_command
}

output "firewall_ssl_id" {
  value       = module.server.firewall_ssl_id
}

output "firewall_ssh_id" {
  value       = module.server.firewall_ssh_id
}