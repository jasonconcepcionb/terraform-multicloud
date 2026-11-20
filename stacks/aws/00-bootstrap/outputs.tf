output "state_bucket_name" {
  description = "Nombre del bucket donde se guarda el state remoto."
  value       = module.state_bucket.id
}

output "state_bucket_arn" {
  description = "ARN del bucket del state."
  value       = module.state_bucket.arn
}