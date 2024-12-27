variable "zone_id" {
  description = "Cloudflare Zone ID"
  type        = string
}

variable "name" {
  description = "Subdomain name for Adobe Portfolio"
  type        = string
}

variable "record_type" {
  description = "Type of DNS record (default: A)"
  type        = string
  default     = "A"
}

variable "proxied" {
  description = "Enable Cloudflare proxy (default: false)"
  type        = bool
  default     = false
}

variable "adobe_ips" {
  description = "List of Adobe Portfolio IPs"
  type        = list(string)
  default     = ["151.101.0.119", "151.101.64.119", "151.101.128.119", "151.101.192.119"]
}
