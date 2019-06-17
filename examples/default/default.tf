provider "azuread" {
  version         = "~> 0.4.0"
  client_id       = "${var.arm_client_id}"
  client_secret   = "${var.arm_client_secret}"
  subscription_id = "${var.arm_subscription_id}"
  tenant_id       = "${var.arm_tenant_id}"
}

variable "arm_client_id" {
  type = "string"
}

variable "arm_client_secret" {
  type = "string"
}

variable "arm_subscription_id" {
  type = "string"
}

variable "arm_tenant_id" {
  type = "string"
}

resource "random_string" "default" {
  length  = 5
  upper   = false
  special = false
}

module "service_principal" {
  source = "../../"

  application_name = "${random_string.default.result}"
}
