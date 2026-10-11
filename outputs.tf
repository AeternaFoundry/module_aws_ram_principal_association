output "ram_principal_associations_id" {
  description = "Map of id values across all ram_principal_associations, keyed the same as var.ram_principal_associations"
  value       = { for k, v in aws_ram_principal_association.ram_principal_associations : k => v.id if v.id != null && length(v.id) > 0 }
}
output "ram_principal_associations_principal" {
  description = "Map of principal values across all ram_principal_associations, keyed the same as var.ram_principal_associations"
  value       = { for k, v in aws_ram_principal_association.ram_principal_associations : k => v.principal if v.principal != null && length(v.principal) > 0 }
}
output "ram_principal_associations_region" {
  description = "Map of region values across all ram_principal_associations, keyed the same as var.ram_principal_associations"
  value       = { for k, v in aws_ram_principal_association.ram_principal_associations : k => v.region if v.region != null && length(v.region) > 0 }
}
output "ram_principal_associations_resource_share_arn" {
  description = "Map of resource_share_arn values across all ram_principal_associations, keyed the same as var.ram_principal_associations"
  value       = { for k, v in aws_ram_principal_association.ram_principal_associations : k => v.resource_share_arn if v.resource_share_arn != null && length(v.resource_share_arn) > 0 }
}

