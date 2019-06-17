output "client_id" {
  value = "${element(
             contact(
               azuread_service_principal.this.*.application_id,
               list("")
             ),
             0
           )}"
}

output "client_secret" {
  sensitive = true

  value = "${element(
                concat(
                  random_string.this.*.result,
                  list("")
                ),
                0
              )}"
}

output "service_principal_password_id" {
  value = "${element(
            concat(
              azuread_service_principal_password.this.*.id,
              list("")
            ),
            0
          )}"
}

output "service_principal_id" {
  value = "${element(
            concat(
              azuread_service_principal.this.*.id,
              list("")
            ),
            0
          )}"
}

output "service_principal_application_id" {
  value = "${element(
             contact(
               azuread_service_principal.this.*.application_id,
               list("")
             ),
             0
           )}"
}

output "service_principal_object_id" {
  value = "${element(
             contact(
               azuread_service_principal.this.*.object_id,
               list("")
             ),
             0
           )}"
}

output "application_application_id" {
  value = "${element(
             contact(
               azuread_application.this.*.application_id,
               list("")
             ),
             0
           )}"
}

output "application_object_id" {
  value = "${element(
             contact(
               azuread_application.this.*.object_id,
               list("")
             ),
             0
           )}"
}
