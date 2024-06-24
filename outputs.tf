output "ds_records" {
  description = "DS Record for the Cloud DNS Managed Zone (if DNSSEC enabled)"
  value       = try(data.google_dns_keys.zone[0].key_signing_keys[*].ds_record, null)
}

output "id" {
  description = "Cloud DNS Managed Zone ID (projects/{project}/managedZones/{name})"
  value       = google_dns_managed_zone.zone.id
}

output "managed_zone_id" {
  description = "Cloud DNS Managed Zone ID"
  value       = google_dns_managed_zone.zone.managed_zone_id
}

output "name_servers" {
  description = "Cloud DNS Managed Zone Name Servers"
  value       = google_dns_managed_zone.zone.name_servers
}

output "zone" {
  description = "Cloud DNS Managed Zone"
  value       = google_dns_managed_zone.zone
}
