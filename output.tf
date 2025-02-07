output "created_records" {
  value = cloudflare_dns_record.adobe_portfolio[*].id
}
