# winstonberty-infra

Terraform infrastructure for winstonberty.dev.

## Resources

- **Hetzner CX22**: 2 vCPU, 4GB RAM, 40GB disk (~$4/mo)
- **K3s**: Lightweight Kubernetes (installed via cloud-init)
- **Cloudflare DNS**: A records for domain
- **Caddy**: Ingress with automatic TLS

## Structure

```
├── terraform.tf          # Provider configuration
├── variables.tf          # Input variables
├── outputs.tf            # Output values
├── hetzner.tf            # Server + firewall + SSH key
├── cloudflare.tf         # DNS records
├── k8s/                  # Kubernetes manifests
│   ├── caddy.yaml        # Ingress controller
│   ├── site.yaml         # Astro site deployment
│   └── umami.yaml        # Analytics
└── terraform.tfvars.example
```

## Setup

1. Copy `terraform.tfvars.example` to `terraform.tfvars`
2. Fill in your API tokens and SSH key
3. Run:

```bash
terraform init
terraform plan
terraform apply
```

4. After apply, SSH to server and deploy K8s manifests:

```bash
ssh root@<server-ip>
kubectl apply -f k8s/
```

## Getting API Tokens

### Hetzner
1. Go to https://console.hetzner.cloud
2. Select your project → Security → API Tokens
3. Generate a Read & Write token

### Cloudflare
1. Go to https://dash.cloudflare.com/profile/api-tokens
2. Create token with:
   - Zone:Read (for winstonberty.dev)
   - DNS:Edit (for winstonberty.dev)
3. Get Zone ID from dashboard → winstonberty.dev → Overview sidebar

## Outputs

After `terraform apply`:
- `server_ipv4` - Server IP address
- `ssh_command` - SSH command to connect
- `site_url` - https://winstonberty.dev
- `analytics_url` - https://analytics.winstonberty.dev

## Related

- [winstonberty](https://github.com/winstonberty/winstonberty) - Project docs
- [winstonberty-web](https://github.com/winstonberty/winstonberty-web) - Astro site
