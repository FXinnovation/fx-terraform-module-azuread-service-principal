# terraform-azuread-service-principal

Terraform module to create a Service Principal on Aure AD.

## Usage
Please look at the examples to understand how to use this module.

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| application\_name | Service Principal name | string | n/a | yes |
| enable | Set to true to enable to module, set false to disable it. | string | `"true"` | no |

## Outputs

| Name | Description |
|------|-------------|
| application\_application\_id |  |
| application\_object\_id |  |
| client\_id |  |
| client\_secret |  |
| service\_principal\_application\_id |  |
| service\_principal\_id |  |
| service\_principal\_object\_id |  |
| service\_principal\_password\_id |  |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
