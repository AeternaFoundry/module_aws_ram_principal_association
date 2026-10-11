variable "ram_principal_associations" {
  description = <<EOT
Map of ram_principal_associations, attributes below
Required:
    - principal
    - resource_share_arn
Optional:
    - region
EOT

  type = map(object({
    principal          = string
    resource_share_arn = string
    region             = optional(string)
  }))
  # Note: 2 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

