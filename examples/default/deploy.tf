provider "azuread" {
  version         = "~> 0.4.0"
  client_id       = "${var.client_id}"
  client_secret   = "${var.client_secret}"
  subscription_id = "${var.subscription_id}"
  tenant_id       = "${var.tenant_id}"
}

variable "client_id" {
  type = "string"
}

variable "client_secret" {
  type = "string"
}

variable "subscription_id" {
  type = "string"
}

variable "tenant_id" {
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
