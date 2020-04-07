# terraform-azuread-service-principal

Terraform module to create a Service Principal on Aure AD.

## Usage
Please look at the examples to understand how to use this module.

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| terraform | >= 0.12 |

## Providers

| Name | Version |
|------|---------|
| azuread | n/a |
| azurerm | n/a |
| random | n/a |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| application\_name | Service Principal name. | `string` | n/a | yes |
| enabled | Set to true to enable to module, set false to disable it. | `bool` | `true` | no |
| role\_name | Role for the Service Principal you're creating. | `string` | `"Contributor"` | no |

## Outputs

| Name | Description |
|------|-------------|
| application\_application\_id | n/a |
| application\_object\_id | n/a |
| client\_id | n/a |
| client\_secret | n/a |
| service\_principal\_application\_id | n/a |
| service\_principal\_id | n/a |
| service\_principal\_object\_id | n/a |
| service\_principal\_password\_id | n/a |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
