variable "organizations_lookup" {
  description = <<EOT
Map of organizations_lookup, attributes below
Optional:
    - filter
EOT

  type = map(object({
    filter = optional(string)
  }))
}

