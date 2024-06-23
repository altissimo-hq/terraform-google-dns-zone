variable "default_ttl" {
  description = "Default TTL"
  type        = number
  default     = 300
}

variable "dns_name" {
  description = "DNS Name (ex. 'example.com.')"
  type        = string
}

variable "dnssec_state" {
  description = "DNSSEC config (off, on, or transfer)"
  type        = string
  default     = "off"
}

variable "force_destroy" {
  description = "Set this true to delete all records in the zone."
  type        = string
  default     = false
}

variable "mx_records" {
  description = "Google Cloud DNS MX Records"
  type        = map(any)
}

variable "project_id" {
  description = "Google Cloud Project for Cloud DNS Managed Zone"
  type        = string
}

variable "txt_records" {
  description = "Google Cloud DNS TXT Records"
  type        = map(any)
}

variable "zone_description" {
  description = "Cloud DNS Zone Description"
  type        = string
  default     = null
}

variable "zone_labels" {
  description = "Cloud DNS Zone Labels Map"
  type        = map(string)
  default     = null
}

variable "zone_name" {
  description = "Cloud DNS Zone Name"
  type        = string
  default     = null
}

variable "zone_visibility" {
  description = "Cloud DNS Zone Visibility"
  type        = string
  default     = "public"
}