variable "region" {
  description = "Región de AWS."
  type        = string
  default     = "us-east-1"

  validation {
    condition     = contains(["us-east-1", "us-east-2"], var.region)
    error_message = "Región no permitida. Usa us-east-1 o us-east-2."
  }
}

variable "aws_profile" {
  description = "Perfil de AWS CLI. En local: iac-admin. En el pipeline: null (usa OIDC)."
  type        = string
  default     = null
}

variable "project" {
  description = "Código del proyecto."
  type        = string
}

variable "environment" {
  description = "Ambiente: d (desarrollo), c (certificación), p (producción)."
  type        = string

  validation {
    condition     = contains(["d", "c", "p"], var.environment)
    error_message = "El ambiente debe ser d, c o p."
  }
}

variable "owner" {
  description = "Responsable de los recursos."
  type        = string
}