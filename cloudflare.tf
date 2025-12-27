# Root domain A record
resource "cloudflare_record" "root" {
  zone_id = var.cloudflare_zone_id
  name    = "@"
  content = hcloud_server.main.ipv4_address
  type    = "A"
  ttl     = 300
  proxied = false # Direct connection for TLS termination at Caddy
}

# WWW subdomain
resource "cloudflare_record" "www" {
  zone_id = var.cloudflare_zone_id
  name    = "www"
  content = hcloud_server.main.ipv4_address
  type    = "A"
  ttl     = 300
  proxied = false
}

# Analytics subdomain (for Umami)
resource "cloudflare_record" "analytics" {
  zone_id = var.cloudflare_zone_id
  name    = "analytics"
  content = hcloud_server.main.ipv4_address
  type    = "A"
  ttl     = 300
  proxied = false
}
