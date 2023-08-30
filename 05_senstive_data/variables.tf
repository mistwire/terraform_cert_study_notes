variable "cloud" {
  type = string
  validation {
    condition = contains(["aws", "azure", "gcp", "vmware"], lower(var.
    cloud))
    error_message = "You must use an approved cloud."
  }
  validation {
    condition     = lower(var.cloud) == var.cloud
    error_message = "The cloud name must not have capital letters."
  }
}
variable "ip_address" {
  type = string
  validation {
    condition = can(regex("^(?:[0-9]{1,3}\\.){3}[0-9]{1,3}$", var.
    ip_address))
    error_message = "Must be an IP address of the form X.X.X.X."
  }
}
variable "home_address" {
  type      = string
  sensitive = true
  default   = "1234 Main St. Anytown, USA 12345"
}
output "home_address" {
  value = var.home_address
}