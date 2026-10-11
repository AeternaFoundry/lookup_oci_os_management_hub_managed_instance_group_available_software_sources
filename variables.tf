variable "os_management_hub_managed_instance_group_available_software_sources_lookup" {
  description = <<EOT
Map of os_management_hub_managed_instance_group_available_software_sources_lookup, attributes below
Required:
    - managed_instance_group_id
Optional:
    - compartment_id
    - display_name
    - display_name_contains
    - filter (block):
        - name (required)
        - regex (optional)
        - values (required)
EOT

  type = map(object({
    managed_instance_group_id = string
    compartment_id            = optional(string)
    display_name              = optional(list(string))
    display_name_contains     = optional(string)
    filter = optional(list(object({
      name   = string
      regex  = optional(bool)
      values = list(string)
    })))
  }))
}

