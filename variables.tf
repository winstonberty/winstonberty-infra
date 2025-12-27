# Provider credentials
variable "hcloud_token" {
  description = "Hetzner Cloud API token"
  type        = string
  sensitive   = true
}

variable "cloudflare_api_token" {
  description = "Cloudflare API token"
  type        = string
  sensitive   = true
}

variable "cloudflare_zone_id" {
  description = "Cloudflare zone ID for winstonberty.dev"
  type        = string
}

# Server configuration
variable "server_name" {
  description = "Name of the Hetzner server"
  type        = string
  default     = "winstonberty-1"
}

variable "server_type" {
  description = "Hetzner server type"
  type        = string
  default     = "cx22" # 2 vCPU, 4GB RAM, 40GB disk - ~$4/mo
}

variable "server_location" {
  description = "Hetzner datacenter location"
  type        = string
  default     = "ash" # Ashburn, VA (US East)
}

variable "server_image" {
  description = "Server OS image"
  type        = string
  default     = "ubuntu-24.04"
}

# SSH
variable "ssh_public_key" {
  description = "SSH public key for server access"
  type        = string
}

variable "ssh_key_name" {
  description = "Name for the SSH key in Hetzner"
  type        = string
  default     = "winstonberty-deploy"
}

# Domain
variable "domain" {
  description = "Primary domain"
  type        = string
  default     = "winstonberty.dev"
}
