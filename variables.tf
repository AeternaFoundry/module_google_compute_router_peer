variable "compute_router_peers" {
  description = <<EOT
Map of compute_router_peers, attributes below
Required:
    - interface
    - name
    - peer_asn
    - router
Optional:
    - advertise_mode
    - advertised_groups
    - advertised_route_priority
    - custom_learned_route_priority
    - deletion_policy
    - enable
    - enable_ipv4
    - enable_ipv6
    - export_policies
    - import_policies
    - ip_address
    - ipv4_nexthop_address
    - ipv6_nexthop_address
    - peer_ip_address
    - peer_ipv4_nexthop_address
    - peer_ipv6_nexthop_address
    - project
    - region
    - router_appliance_instance
    - zero_advertised_route_priority
    - zero_custom_learned_route_priority
    - advertised_ip_ranges (block):
        - description (optional)
        - range (required)
    - bfd (block):
        - min_receive_interval (optional)
        - min_transmit_interval (optional)
        - multiplier (optional)
        - session_initialization_mode (required)
    - custom_learned_ip_ranges (block):
        - range (required)
    - md5_authentication_key (block):
        - key (required)
        - name (required)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    interface                          = string
    name                               = string
    peer_asn                           = number
    router                             = string
    advertise_mode                     = optional(string)
    advertised_groups                  = optional(list(string))
    advertised_route_priority          = optional(number)
    custom_learned_route_priority      = optional(number)
    deletion_policy                    = optional(string)
    enable                             = optional(bool)
    enable_ipv4                        = optional(bool)
    enable_ipv6                        = optional(bool)
    export_policies                    = optional(list(string))
    import_policies                    = optional(list(string))
    ip_address                         = optional(string)
    ipv4_nexthop_address               = optional(string)
    ipv6_nexthop_address               = optional(string)
    peer_ip_address                    = optional(string)
    peer_ipv4_nexthop_address          = optional(string)
    peer_ipv6_nexthop_address          = optional(string)
    project                            = optional(string)
    region                             = optional(string)
    router_appliance_instance          = optional(string)
    zero_advertised_route_priority     = optional(bool)
    zero_custom_learned_route_priority = optional(bool)
    advertised_ip_ranges = optional(list(object({
      description = optional(string)
      range       = string
    })))
    bfd = optional(object({
      min_receive_interval        = optional(number)
      min_transmit_interval       = optional(number)
      multiplier                  = optional(number)
      session_initialization_mode = string
    }))
    custom_learned_ip_ranges = optional(list(object({
      range = string
    })))
    md5_authentication_key = optional(object({
      key  = string
      name = string
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
  # Note: 10 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

