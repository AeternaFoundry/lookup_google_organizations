output "organizations_lookup_id" {
  description = "Map of id values across all organizations_lookup, keyed the same as var.organizations_lookup except keys with no id are omitted"
  value       = { for k, v in data.google_organizations.organizations_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "organizations_lookup_filter" {
  description = "Map of filter values across all organizations_lookup, keyed the same as var.organizations_lookup except keys with no filter are omitted"
  value       = { for k, v in data.google_organizations.organizations_lookup : k => v.filter if v.filter != null && length(v.filter) > 0 }
}
output "organizations_lookup_organizations" {
  description = "Map of organizations values across all organizations_lookup, keyed the same as var.organizations_lookup except keys with no organizations are omitted"
  value       = { for k, v in data.google_organizations.organizations_lookup : k => v.organizations if v.organizations != null && length(v.organizations) > 0 }
}

