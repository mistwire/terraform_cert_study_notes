resource "random_string" "mistwire" {
  length      = 16
  special     = false
  min_numeric = 10
  min_special = 2
  min_upper   = 3
}
