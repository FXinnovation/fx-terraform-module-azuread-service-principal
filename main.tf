data "azurerm_subscription" "this" {}

resource "azuread_application" "this" {
  count = var.enabled ? 1 : 0
  name  = var.application_name
}

resource "azuread_service_principal" "this" {
  count          = var.enabled ? 1 : 0
  application_id = azuread_application.this[0].application_id
}

resource "random_string" "this" {
  count   = var.enabled ? 1 : 0
  length  = 20
  special = false

  keepers = {
    service_principal = azuread_service_principal.this[0].id
  }
}

resource "azuread_service_principal_password" "this" {
  count                = var.enabled ? 1 : 0
  service_principal_id = azuread_service_principal.this[0].id
  value                = random_string.this[0].result
  end_date             = timeadd(timestamp(), "8760h")

  lifecycle {
    ignore_changes = [end_date]
  }
}

resource "azurerm_role_assignment" "service_principal" {
  count                = var.enabled ? 1 : 0
  scope                = data.azurerm_subscription.this.id
  role_definition_name = var.role_name
  principal_id         = azurerm_azuread_service_principal.this.id
  depends_on = [
    "azurerm_azuread_service_principal_password.this"
  ]
}
