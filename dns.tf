resource "google_dns_managed_zone" "zone" {
  project     = var.project_id
  name        = var.zone_name == null ? replace(trim(var.dns_name, "."), ".", "-") : var.zone_name
  dns_name    = var.dns_name
  description = var.zone_description
  dnssec_config {
    state = var.dnssec_state
  }
  force_destroy = var.force_destroy
  labels        = var.zone_labels
}

data "google_dns_keys" "zone" {
  count        = google_dns_managed_zone.zone.dnssec_config[0].state == "on" ? 1 : 0
  managed_zone = google_dns_managed_zone.zone.id
}

resource "google_dns_record_set" "mx_records" {
  for_each     = var.mx_records
  name         = each.key == "@" ? var.dns_name : "${each.key}.${var.dns_name}"
  managed_zone = google_dns_managed_zone.zone.name
  project      = google_dns_managed_zone.zone.project
  type         = "MX"
  ttl          = lookup(each.value, "ttl", var.default_ttl)
  rrdatas      = each.value.rrdatas
}

resource "google_dns_record_set" "txt_records" {
  for_each     = var.txt_records
  name         = each.key == "@" ? var.dns_name : "${each.key}.${var.dns_name}"
  managed_zone = google_dns_managed_zone.zone.name
  project      = google_dns_managed_zone.zone.project
  type         = "TXT"
  ttl          = lookup(each.value, "ttl", var.default_ttl)
  rrdatas      = each.value.rrdatas
}
