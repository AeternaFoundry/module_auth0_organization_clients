output "organization_clients_id" {
  description = "Map of id values across all organization_clients, keyed the same as var.organization_clients"
  value       = { for k, v in auth0_organization_clients.organization_clients : k => v.id }
}
output "organization_clients_clients" {
  description = "Map of clients values across all organization_clients, keyed the same as var.organization_clients"
  value       = { for k, v in auth0_organization_clients.organization_clients : k => v.clients }
}
output "organization_clients_organization_id" {
  description = "Map of organization_id values across all organization_clients, keyed the same as var.organization_clients"
  value       = { for k, v in auth0_organization_clients.organization_clients : k => v.organization_id }
}

