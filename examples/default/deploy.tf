resource "random_string" "default" {
  length  = 5
  upper   = false
  special = false
}

module "service_principal" {
  source = "../../"

  application_name = "${random_string.default.result}-service-principal"
}
