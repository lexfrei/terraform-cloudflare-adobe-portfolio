terraform {
  required_providers {
    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = "4.49.1"
    }
  }
}

resource "cloudflare_record" "adobe_portfolio" {
  count   = length(var.adobe_ips)
  zone_id = var.zone_id
  name    = replace(var.name, "www.", "")
  content = var.adobe_ips[count.index]
  type    = var.record_type
  proxied = var.proxied
}

resource "cloudflare_record" "www_adobe_portfolio" {
  count   = length(var.adobe_ips)
  zone_id = var.zone_id
  name    = "www.${replace(var.name, "www.", "")}"
  content = var.adobe_ips[count.index]
  type    = var.record_type
  proxied = var.proxied
}