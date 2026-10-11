output "compute_router_peers_id" {
  description = "Map of id values across all compute_router_peers, keyed the same as var.compute_router_peers except keys with no id are omitted"
  value       = { for k, v in google_compute_router_peer.compute_router_peers : k => v.id if v.id != null && length(v.id) > 0 }
}
output "compute_router_peers_advertise_mode" {
  description = "Map of advertise_mode values across all compute_router_peers, keyed the same as var.compute_router_peers except keys with no advertise_mode are omitted"
  value       = { for k, v in google_compute_router_peer.compute_router_peers : k => v.advertise_mode if v.advertise_mode != null && length(v.advertise_mode) > 0 }
}
output "compute_router_peers_advertised_groups" {
  description = "Map of advertised_groups values across all compute_router_peers, keyed the same as var.compute_router_peers except keys with no advertised_groups are omitted"
  value       = { for k, v in google_compute_router_peer.compute_router_peers : k => v.advertised_groups if v.advertised_groups != null && length(v.advertised_groups) > 0 }
}
output "compute_router_peers_advertised_ip_ranges" {
  description = "Map of advertised_ip_ranges values across all compute_router_peers, keyed the same as var.compute_router_peers except keys with no advertised_ip_ranges are omitted"
  value       = { for k, v in google_compute_router_peer.compute_router_peers : k => v.advertised_ip_ranges if v.advertised_ip_ranges != null && length(v.advertised_ip_ranges) > 0 }
}
output "compute_router_peers_advertised_route_priority" {
  description = "Map of advertised_route_priority values across all compute_router_peers, keyed the same as var.compute_router_peers except keys with no advertised_route_priority are omitted"
  value       = { for k, v in google_compute_router_peer.compute_router_peers : k => v.advertised_route_priority if v.advertised_route_priority != null }
}
output "compute_router_peers_bfd" {
  description = "Map of bfd values across all compute_router_peers, keyed the same as var.compute_router_peers except keys with no bfd are omitted"
  value       = { for k, v in google_compute_router_peer.compute_router_peers : k => one(v.bfd) if v.bfd != null && length(v.bfd) > 0 }
}
output "compute_router_peers_custom_learned_ip_ranges" {
  description = "Map of custom_learned_ip_ranges values across all compute_router_peers, keyed the same as var.compute_router_peers except keys with no custom_learned_ip_ranges are omitted"
  value       = { for k, v in google_compute_router_peer.compute_router_peers : k => v.custom_learned_ip_ranges if v.custom_learned_ip_ranges != null && length(v.custom_learned_ip_ranges) > 0 }
}
output "compute_router_peers_custom_learned_route_priority" {
  description = "Map of custom_learned_route_priority values across all compute_router_peers, keyed the same as var.compute_router_peers except keys with no custom_learned_route_priority are omitted"
  value       = { for k, v in google_compute_router_peer.compute_router_peers : k => v.custom_learned_route_priority if v.custom_learned_route_priority != null }
}
output "compute_router_peers_deletion_policy" {
  description = "Map of deletion_policy values across all compute_router_peers, keyed the same as var.compute_router_peers except keys with no deletion_policy are omitted"
  value       = { for k, v in google_compute_router_peer.compute_router_peers : k => v.deletion_policy if v.deletion_policy != null && length(v.deletion_policy) > 0 }
}
output "compute_router_peers_enable" {
  description = "Map of enable values across all compute_router_peers, keyed the same as var.compute_router_peers except keys with no enable are omitted"
  value       = { for k, v in google_compute_router_peer.compute_router_peers : k => v.enable if v.enable != null }
}
output "compute_router_peers_enable_ipv4" {
  description = "Map of enable_ipv4 values across all compute_router_peers, keyed the same as var.compute_router_peers except keys with no enable_ipv4 are omitted"
  value       = { for k, v in google_compute_router_peer.compute_router_peers : k => v.enable_ipv4 if v.enable_ipv4 != null }
}
output "compute_router_peers_enable_ipv6" {
  description = "Map of enable_ipv6 values across all compute_router_peers, keyed the same as var.compute_router_peers except keys with no enable_ipv6 are omitted"
  value       = { for k, v in google_compute_router_peer.compute_router_peers : k => v.enable_ipv6 if v.enable_ipv6 != null }
}
output "compute_router_peers_export_policies" {
  description = "Map of export_policies values across all compute_router_peers, keyed the same as var.compute_router_peers except keys with no export_policies are omitted"
  value       = { for k, v in google_compute_router_peer.compute_router_peers : k => v.export_policies if v.export_policies != null && length(v.export_policies) > 0 }
}
output "compute_router_peers_import_policies" {
  description = "Map of import_policies values across all compute_router_peers, keyed the same as var.compute_router_peers except keys with no import_policies are omitted"
  value       = { for k, v in google_compute_router_peer.compute_router_peers : k => v.import_policies if v.import_policies != null && length(v.import_policies) > 0 }
}
output "compute_router_peers_interface" {
  description = "Map of interface values across all compute_router_peers, keyed the same as var.compute_router_peers except keys with no interface are omitted"
  value       = { for k, v in google_compute_router_peer.compute_router_peers : k => v.interface if v.interface != null && length(v.interface) > 0 }
}
output "compute_router_peers_ip_address" {
  description = "Map of ip_address values across all compute_router_peers, keyed the same as var.compute_router_peers except keys with no ip_address are omitted"
  value       = { for k, v in google_compute_router_peer.compute_router_peers : k => v.ip_address if v.ip_address != null && length(v.ip_address) > 0 }
}
output "compute_router_peers_ipv4_nexthop_address" {
  description = "Map of ipv4_nexthop_address values across all compute_router_peers, keyed the same as var.compute_router_peers except keys with no ipv4_nexthop_address are omitted"
  value       = { for k, v in google_compute_router_peer.compute_router_peers : k => v.ipv4_nexthop_address if v.ipv4_nexthop_address != null && length(v.ipv4_nexthop_address) > 0 }
}
output "compute_router_peers_ipv6_nexthop_address" {
  description = "Map of ipv6_nexthop_address values across all compute_router_peers, keyed the same as var.compute_router_peers except keys with no ipv6_nexthop_address are omitted"
  value       = { for k, v in google_compute_router_peer.compute_router_peers : k => v.ipv6_nexthop_address if v.ipv6_nexthop_address != null && length(v.ipv6_nexthop_address) > 0 }
}
output "compute_router_peers_is_advertised_route_priority_set" {
  description = "Map of is_advertised_route_priority_set values across all compute_router_peers, keyed the same as var.compute_router_peers except keys with no is_advertised_route_priority_set are omitted"
  value       = { for k, v in google_compute_router_peer.compute_router_peers : k => v.is_advertised_route_priority_set if v.is_advertised_route_priority_set != null }
}
output "compute_router_peers_is_custom_learned_priority_set" {
  description = "Map of is_custom_learned_priority_set values across all compute_router_peers, keyed the same as var.compute_router_peers except keys with no is_custom_learned_priority_set are omitted"
  value       = { for k, v in google_compute_router_peer.compute_router_peers : k => v.is_custom_learned_priority_set if v.is_custom_learned_priority_set != null }
}
output "compute_router_peers_management_type" {
  description = "Map of management_type values across all compute_router_peers, keyed the same as var.compute_router_peers except keys with no management_type are omitted"
  value       = { for k, v in google_compute_router_peer.compute_router_peers : k => v.management_type if v.management_type != null && length(v.management_type) > 0 }
}
output "compute_router_peers_md5_authentication_key" {
  description = "Map of md5_authentication_key values across all compute_router_peers, keyed the same as var.compute_router_peers except keys with no md5_authentication_key are omitted"
  value       = { for k, v in google_compute_router_peer.compute_router_peers : k => one(v.md5_authentication_key) if v.md5_authentication_key != null && length(v.md5_authentication_key) > 0 }
  sensitive   = true
}
output "compute_router_peers_name" {
  description = "Map of name values across all compute_router_peers, keyed the same as var.compute_router_peers except keys with no name are omitted"
  value       = { for k, v in google_compute_router_peer.compute_router_peers : k => v.name if v.name != null && length(v.name) > 0 }
}
output "compute_router_peers_peer_asn" {
  description = "Map of peer_asn values across all compute_router_peers, keyed the same as var.compute_router_peers except keys with no peer_asn are omitted"
  value       = { for k, v in google_compute_router_peer.compute_router_peers : k => v.peer_asn if v.peer_asn != null }
}
output "compute_router_peers_peer_ip_address" {
  description = "Map of peer_ip_address values across all compute_router_peers, keyed the same as var.compute_router_peers except keys with no peer_ip_address are omitted"
  value       = { for k, v in google_compute_router_peer.compute_router_peers : k => v.peer_ip_address if v.peer_ip_address != null && length(v.peer_ip_address) > 0 }
}
output "compute_router_peers_peer_ipv4_nexthop_address" {
  description = "Map of peer_ipv4_nexthop_address values across all compute_router_peers, keyed the same as var.compute_router_peers except keys with no peer_ipv4_nexthop_address are omitted"
  value       = { for k, v in google_compute_router_peer.compute_router_peers : k => v.peer_ipv4_nexthop_address if v.peer_ipv4_nexthop_address != null && length(v.peer_ipv4_nexthop_address) > 0 }
}
output "compute_router_peers_peer_ipv6_nexthop_address" {
  description = "Map of peer_ipv6_nexthop_address values across all compute_router_peers, keyed the same as var.compute_router_peers except keys with no peer_ipv6_nexthop_address are omitted"
  value       = { for k, v in google_compute_router_peer.compute_router_peers : k => v.peer_ipv6_nexthop_address if v.peer_ipv6_nexthop_address != null && length(v.peer_ipv6_nexthop_address) > 0 }
}
output "compute_router_peers_project" {
  description = "Map of project values across all compute_router_peers, keyed the same as var.compute_router_peers except keys with no project are omitted"
  value       = { for k, v in google_compute_router_peer.compute_router_peers : k => v.project if v.project != null && length(v.project) > 0 }
}
output "compute_router_peers_region" {
  description = "Map of region values across all compute_router_peers, keyed the same as var.compute_router_peers except keys with no region are omitted"
  value       = { for k, v in google_compute_router_peer.compute_router_peers : k => v.region if v.region != null && length(v.region) > 0 }
}
output "compute_router_peers_router" {
  description = "Map of router values across all compute_router_peers, keyed the same as var.compute_router_peers except keys with no router are omitted"
  value       = { for k, v in google_compute_router_peer.compute_router_peers : k => v.router if v.router != null && length(v.router) > 0 }
}
output "compute_router_peers_router_appliance_instance" {
  description = "Map of router_appliance_instance values across all compute_router_peers, keyed the same as var.compute_router_peers except keys with no router_appliance_instance are omitted"
  value       = { for k, v in google_compute_router_peer.compute_router_peers : k => v.router_appliance_instance if v.router_appliance_instance != null && length(v.router_appliance_instance) > 0 }
}
output "compute_router_peers_zero_advertised_route_priority" {
  description = "Map of zero_advertised_route_priority values across all compute_router_peers, keyed the same as var.compute_router_peers except keys with no zero_advertised_route_priority are omitted"
  value       = { for k, v in google_compute_router_peer.compute_router_peers : k => v.zero_advertised_route_priority if v.zero_advertised_route_priority != null }
}
output "compute_router_peers_zero_custom_learned_route_priority" {
  description = "Map of zero_custom_learned_route_priority values across all compute_router_peers, keyed the same as var.compute_router_peers except keys with no zero_custom_learned_route_priority are omitted"
  value       = { for k, v in google_compute_router_peer.compute_router_peers : k => v.zero_custom_learned_route_priority if v.zero_custom_learned_route_priority != null }
}

