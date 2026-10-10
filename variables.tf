variable "organization_clients" {
  description = <<EOT
Map of organization_clients, attributes below
Required:
    - organization_id
    - clients (block):
        - client_id (required)
        - use_for_member_access (optional)
EOT

  type = map(object({
    organization_id = string
    clients = list(object({
      client_id             = string
      use_for_member_access = optional(bool)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.organization_clients : (
        length(v.clients) >= 1
      )
    ])
    error_message = "Each clients list must contain at least 1 items"
  }
}

