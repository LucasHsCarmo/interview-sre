variable "project_id" {
  type        = string
  description = "GCloud Project ID"
  default     = "lucas-carmo"
}

variable "region" {
  type        = string
  description = "GCloud Region"
  default     = "us-central1"
}

variable "zone" {
  type        = string
  description = "GCloud Zone"
  default     = "us-central1-a"
}

variable "type_machine" {
  type        = string
  description = "GCloud Type Machine"
  default     = "g1-small"
}