output "content_scannings_modified" {
  description = "Map of modified values across all content_scannings, keyed the same as var.content_scannings except keys with no modified are omitted"
  value       = { for k, v in cloudflare_content_scanning.content_scannings : k => v.modified if v.modified != null && length(v.modified) > 0 }
}
output "content_scannings_value" {
  description = "Map of value values across all content_scannings, keyed the same as var.content_scannings except keys with no value are omitted"
  value       = { for k, v in cloudflare_content_scanning.content_scannings : k => v.value if v.value != null && length(v.value) > 0 }
}
output "content_scannings_zone_id" {
  description = "Map of zone_id values across all content_scannings, keyed the same as var.content_scannings except keys with no zone_id are omitted"
  value       = { for k, v in cloudflare_content_scanning.content_scannings : k => v.zone_id if v.zone_id != null && length(v.zone_id) > 0 }
}

