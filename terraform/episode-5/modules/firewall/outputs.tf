
output "firewall_ssl_id" {
  description = "The ID of the SSL/HTTP firewall"
  value       = hcloud_firewall.ssl.id
}

output "firewall_ssh_id" {
  description = "The ID of the SSH firewall"
  value       = hcloud_firewall.ssh.id
}