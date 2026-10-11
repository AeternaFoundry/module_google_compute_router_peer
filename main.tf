resource "google_compute_router_peer" "compute_router_peers" {
  for_each = var.compute_router_peers

  interface                          = each.value.interface
  name                               = each.value.name
  peer_asn                           = each.value.peer_asn
  router                             = each.value.router
  advertise_mode                     = each.value.advertise_mode
  advertised_groups                  = each.value.advertised_groups
  advertised_route_priority          = each.value.advertised_route_priority
  custom_learned_route_priority      = each.value.custom_learned_route_priority
  deletion_policy                    = each.value.deletion_policy
  enable                             = each.value.enable
  enable_ipv4                        = each.value.enable_ipv4
  enable_ipv6                        = each.value.enable_ipv6
  export_policies                    = each.value.export_policies
  import_policies                    = each.value.import_policies
  ip_address                         = each.value.ip_address
  ipv4_nexthop_address               = each.value.ipv4_nexthop_address
  ipv6_nexthop_address               = each.value.ipv6_nexthop_address
  peer_ip_address                    = each.value.peer_ip_address
  peer_ipv4_nexthop_address          = each.value.peer_ipv4_nexthop_address
  peer_ipv6_nexthop_address          = each.value.peer_ipv6_nexthop_address
  project                            = each.value.project
  region                             = each.value.region
  router_appliance_instance          = each.value.router_appliance_instance
  zero_advertised_route_priority     = each.value.zero_advertised_route_priority
  zero_custom_learned_route_priority = each.value.zero_custom_learned_route_priority

  dynamic "advertised_ip_ranges" {
    for_each = each.value.advertised_ip_ranges != null ? each.value.advertised_ip_ranges : []
    content {
      description = advertised_ip_ranges.value.description
      range       = advertised_ip_ranges.value.range
    }
  }

  dynamic "bfd" {
    for_each = each.value.bfd != null ? [each.value.bfd] : []
    content {
      min_receive_interval        = bfd.value.min_receive_interval
      min_transmit_interval       = bfd.value.min_transmit_interval
      multiplier                  = bfd.value.multiplier
      session_initialization_mode = bfd.value.session_initialization_mode
    }
  }

  dynamic "custom_learned_ip_ranges" {
    for_each = each.value.custom_learned_ip_ranges != null ? each.value.custom_learned_ip_ranges : []
    content {
      range = custom_learned_ip_ranges.value.range
    }
  }

  dynamic "md5_authentication_key" {
    for_each = each.value.md5_authentication_key != null ? [each.value.md5_authentication_key] : []
    content {
      key  = md5_authentication_key.value.key
      name = md5_authentication_key.value.name
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

