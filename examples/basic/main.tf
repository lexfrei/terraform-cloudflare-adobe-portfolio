module "adobe_portfolio" {
  source  = "lexfrei/adobe-portfolio/cloudflare"
  zone_id = "abc123zoneid"
  name    = "example.com"
  adobe_ips = [
    "151.101.0.119",
    "151.101.64.119",
    "151.101.128.119",
    "151.101.192.119",
  ]
}
