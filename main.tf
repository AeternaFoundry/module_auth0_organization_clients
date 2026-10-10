resource "auth0_organization_clients" "organization_clients" {
  for_each = var.organization_clients

  organization_id = each.value.organization_id

  dynamic "clients" {
    for_each = each.value.clients
    content {
      client_id             = clients.value.client_id
      use_for_member_access = clients.value.use_for_member_access
    }
  }
}

