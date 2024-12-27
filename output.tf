output "created_records" {
  value = cloudflare_record.adobe_portfolio[*].id
}