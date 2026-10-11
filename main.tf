resource "cloudflare_content_scanning" "content_scannings" {
  for_each = var.content_scannings

  value   = each.value.value
  zone_id = each.value.zone_id
}

