# winstonberty-infra

Terraform infrastructure for winstonberty.dev.

## Resources

- **Hetzner**: CX22 VM (~$4/mo) running K3s
- **Cloudflare**: DNS records for winstonberty.dev
- **Spacelift**: GitOps for Terraform (free tier)

## Structure

```
├── hetzner/        # VM provisioning
├── cloudflare/     # DNS records
└── k3s/            # Cluster bootstrap
```

## Usage

```bash
# Initialize
terraform init

# Plan
terraform plan

# Apply
terraform apply
```

## Prerequisites

- Hetzner API token
- Cloudflare API token
- Spacelift connected to this repo

## Related

- [winstonberty](https://github.com/winstonberty/winstonberty) - Project docs
- [winstonberty-web](https://github.com/winstonberty/winstonberty-web) - Astro site
