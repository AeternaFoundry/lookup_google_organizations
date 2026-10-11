data "google_organizations" "organizations_lookup" {
  for_each = var.organizations_lookup

  filter = each.value.filter
}

