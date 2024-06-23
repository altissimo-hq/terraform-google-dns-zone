<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_google"></a> [google](#provider\_google) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [google_dns_managed_zone.zone](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/dns_managed_zone) | resource |
| [google_dns_record_set.mx_records](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/dns_record_set) | resource |
| [google_dns_record_set.txt_records](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/dns_record_set) | resource |
| [google_dns_keys.zone](https://registry.terraform.io/providers/hashicorp/google/latest/docs/data-sources/dns_keys) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_default_ttl"></a> [default\_ttl](#input\_default\_ttl) | Default TTL | `number` | `300` | no |
| <a name="input_dns_name"></a> [dns\_name](#input\_dns\_name) | DNS Name (ex. 'example.com.') | `string` | n/a | yes |
| <a name="input_dnssec_state"></a> [dnssec\_state](#input\_dnssec\_state) | DNSSEC config (off, on, or transfer) | `string` | `"off"` | no |
| <a name="input_force_destroy"></a> [force\_destroy](#input\_force\_destroy) | Set this true to delete all records in the zone. | `string` | `false` | no |
| <a name="input_mx_records"></a> [mx\_records](#input\_mx\_records) | Google Cloud DNS MX Records | `map(any)` | n/a | yes |
| <a name="input_project_id"></a> [project\_id](#input\_project\_id) | Google Cloud Project for Cloud DNS Managed Zone | `string` | n/a | yes |
| <a name="input_txt_records"></a> [txt\_records](#input\_txt\_records) | Google Cloud DNS TXT Records | `map(any)` | n/a | yes |
| <a name="input_zone_description"></a> [zone\_description](#input\_zone\_description) | Cloud DNS Zone Description | `string` | `null` | no |
| <a name="input_zone_labels"></a> [zone\_labels](#input\_zone\_labels) | Cloud DNS Zone Labels Map | `map(string)` | `null` | no |
| <a name="input_zone_name"></a> [zone\_name](#input\_zone\_name) | Cloud DNS Zone Name | `string` | `null` | no |
| <a name="input_zone_visibility"></a> [zone\_visibility](#input\_zone\_visibility) | Cloud DNS Zone Visibility | `string` | `"public"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_ds_records"></a> [ds\_records](#output\_ds\_records) | DS Record for the Cloud DNS Managed Zone (if DNSSEC enabled) |
| <a name="output_id"></a> [id](#output\_id) | Cloud DNS Managed Zone ID (projects/{project}/managedZones/{name}) |
| <a name="output_managed_zone_id"></a> [managed\_zone\_id](#output\_managed\_zone\_id) | Cloud DNS Managed Zone ID |
| <a name="output_name_servers"></a> [name\_servers](#output\_name\_servers) | Cloud DNS Managed Zone Name Servers |
| <a name="output_zone"></a> [zone](#output\_zone) | Cloud DNS Managed Zone |
<!-- END_TF_DOCS -->
