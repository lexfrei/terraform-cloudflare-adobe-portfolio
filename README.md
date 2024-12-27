# Terraform Cloudflare Adobe Portfolio Module

This module configures Cloudflare DNS records for Adobe Portfolio integration.

## Features

- Automatically creates DNS A records for a specified domain and subdomain (e.g., "www").
- Supports custom IPs for Adobe Portfolio.
- Uses Cloudflare's infrastructure for DNS management.

## Usage

```hcl
module "adobe_portfolio" {
  source  = "github.com/lexfrei/terraform-cloudflare-adobe-portfolio"
  version = "1.0.0"

  # Required
  zone_id   = "your-zone-id"
  name      = "example.com"
  # Optional
  adobe_ips = ["151.101.0.119", "151.101.64.119", "151.101.128.119", "151.101.192.119"]
  record_type = "A"
  proxied = false
}
```

## Inputs

| Name         | Description                          | Type           | Default                                   | Required |
|--------------|--------------------------------------|----------------|-------------------------------------------|----------|
| `zone_id`    | Cloudflare Zone ID                  | `string`       | n/a                                       | yes      |
| `name`       | Subdomain name for Adobe Portfolio  | `string`       | n/a                                       | yes      |
| `record_type`| Type of DNS record (default: A)     | `string`       | `"A"`                                     | no       |
| `proxied`    | Enable Cloudflare proxy (default: false) | `bool`      | `false`                                   | no       |
| `adobe_ips`  | List of Adobe Portfolio IPs         | `list(string)` | `["151.101.0.119", "151.101.64.119", "151.101.128.119", "151.101.192.119"]` | no       |

## Outputs

| Name              | Description                 |
|-------------------|-----------------------------|
| `dns_record_ids`  | List of IDs for created DNS records |

## Example

```hcl
module "adobe_portfolio" {
  source  = "github.com/lexfrei/terraform-cloudflare-adobe-portfolio"
  version = "1.0.0"

  zone_id   = "your-zone-id"
  name      = "example.com"
  adobe_ips = ["151.101.0.119", "151.101.64.119", "151.101.128.119", "151.101.192.119"]
}
```

## License

BSD 2-Clause License. See [LICENSE](LICENSE) for details.
