variable "content_scannings" {
  description = <<EOT
Map of content_scannings, attributes below
Required:
    - value
    - zone_id
EOT

  type = map(object({
    value   = string
    zone_id = string
  }))
}

