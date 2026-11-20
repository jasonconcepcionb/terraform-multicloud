variable "bucket_name" {
  description = "Nombre completo del bucket. Solo minúsculas, números y guiones."
  type        = string

  validation {
    condition     = can(regex("^[a-z0-9-]{3,63}$", var.bucket_name))
    error_message = "El nombre debe tener entre 3 y 63 caracteres: minúsculas, números o guiones."
  }
}

variable "versioning_enabled" {
  description = "Activa el versionado del bucket."
  type        = bool
  default     = true
}

variable "force_destroy" {
  description = "Permite borrar el bucket aunque tenga archivos. Usar true solo en desarrollo."
  type        = bool
  default     = false
}

variable "kms_key_arn" {
  description = "ARN de la llave KMS para cifrar. Si es null, se usa SSE-S3 (AES256)."
  type        = string
  default     = null
}

variable "tags" {
  description = "Etiquetas adicionales para el bucket."
  type        = map(string)
  default     = {}
}