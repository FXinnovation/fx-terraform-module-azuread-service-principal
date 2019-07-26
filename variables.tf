variable "application_name" {
  type        = string
  description = "Service Principal name"
}

variable "enabled" {
  type        = bool
  default     = true
  description = "Set to true to enable to module, set false to disable it."
}

variable "role_name" {
  type        = string
  default     = "Contributor"
  description = "Role for the Service Principal you're creating."
}
