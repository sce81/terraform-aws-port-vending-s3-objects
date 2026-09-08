variable "bucket_name" {
  description = "Name of the existing S3 bucket in which to create objects."
  type        = string
  nullable    = false
}

variable "execution_name" {
  description = "Execution identifier used as the prefix for the created S3 objects."
  type        = string
  nullable    = false

  validation {
    condition     = length(trimspace(var.execution_name)) > 0
    error_message = "execution_name must not be empty."
  }
}

variable "landing_zone" {
  description = "Text content written to the Landing-zone object."
  type        = string
  nullable    = false
}

variable "env" {
  description = "Environment name used in resource tags."
  type        = string
  nullable    = false
}

variable "project" {
  description = "Project name used in resource tags."
  type        = string
  nullable    = false
}

variable "name" {
  description = "Module instance name used in resource tags."
  type        = string
  nullable    = false
}

variable "extra_tags" {
  description = "Additional tags applied to supported S3 objects."
  type        = map(any)
  default     = {}
}
