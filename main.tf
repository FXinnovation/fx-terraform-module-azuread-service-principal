resource "azuread_application" "this" {
  count = "${var.enable == "false" ? 0 : 1}"
  name  = "${var.application_name}"
}

resource "azuread_service_principal" "this" {
  count          = "${var.enable == "false" ? 0 : 1}"
  application_id = "${azuread_application.this.application_id}"
}

resource "random_string" "this" {
  count   = "${var.enable == "false" ? 0 : 1}"
  length  = 16
  special = true

  keepers = {
    service_principal = "${azuread_service_principal.this_sp.id}"
  }
}

resource "azuread_service_principal_password" "this" {
  count                = "${var.enable == "false" ? 0 : 1}"
  service_principal_id = "${azuread_service_principal.this.id}"
  value                = "${random_string.this.result}"
  end_date             = "${timeadd(timestamp(), "8760h")}"

  lifecycle {
    ignore_changes = ["end_date"]
  }

  provisioner "local-exec" {
    command = "sleep 30"
  }
}