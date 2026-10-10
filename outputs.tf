output "organization_clients_id" {
  description = "Map of id values across all organization_clients, keyed the same as var.organization_clients except keys with no id are omitted"
  value       = { for k, v in auth0_organization_clients.organization_clients : k => v.id if v.id != null && length(v.id) > 0 }
}
output "organization_clients_clients" {
  description = "Map of clients values across all organization_clients, keyed the same as var.organization_clients except keys with no clients are omitted"
  value       = { for k, v in auth0_organization_clients.organization_clients : k => v.clients if v.clients != null && length(v.clients) > 0 }
}
output "organization_clients_organization_id" {
  description = "Map of organization_id values across all organization_clients, keyed the same as var.organization_clients except keys with no organization_id are omitted"
  value       = { for k, v in auth0_organization_clients.organization_clients : k => v.organization_id if v.organization_id != null && length(v.organization_id) > 0 }
}

