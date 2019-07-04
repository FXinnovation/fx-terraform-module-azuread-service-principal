variable "application_name" {
  type        = string
  description = "Service Principal name"
}

variable "enable" {
  type        = string
  default     = "true"
  description = "Set to true to enable to module, set false to disable it."
}
