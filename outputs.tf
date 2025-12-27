output "server_ipv4" {
  description = "Public IPv4 address of the server"
  value       = hcloud_server.main.ipv4_address
}

output "server_ipv6" {
  description = "Public IPv6 address of the server"
  value       = hcloud_server.main.ipv6_address
}

output "server_status" {
  description = "Server status"
  value       = hcloud_server.main.status
}

output "ssh_command" {
  description = "SSH command to connect to the server"
  value       = "ssh root@${hcloud_server.main.ipv4_address}"
}

output "site_url" {
  description = "Site URL"
  value       = "https://${var.domain}"
}

output "analytics_url" {
  description = "Analytics URL"
  value       = "https://analytics.${var.domain}"
}
